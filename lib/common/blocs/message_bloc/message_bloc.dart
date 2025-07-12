import 'dart:async';
import 'dart:convert';

import 'package:client/common/api/response_message.dart';
import 'package:client/common/api/websocket.dart';
import 'package:client/core/exceptions.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:client/domain/repositories/message_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final IMessageRepository _messageRepository;
  final WebsocketApi _websocketApi;
  final List<MessageEntity> _messages = [];
  MessageBloc({
    required IMessageRepository messageRepository,
    required WebsocketApi websocketApi,
  }) : _messageRepository = messageRepository,
       _websocketApi = websocketApi,
       super(MessageState.initial()) {
    _websocketApi.stream.listen((message) {
      final json = jsonDecode(message);
      final response = ResponseMessage.fromJson(json);
      handleResponse(response);
    });
    on<MessageEvent>((event, emit) async {
      switch (event) {
        case _LoadMessages():
          await _loadMessage(emit, event);
        case _SendMessage():
          await _sendMessage(emit, event);
        case _DeleteMessage():
          await _deleteMessage(emit, event);
        case _ReceivedMessage():
          await _receivedMessage(emit, event);
        case _ReceivedMessages():
          await _receivedMessages(emit, event);
        case _AddFailureState():
          _addFailureState(emit, event);
      }
    });
  }

  void handleResponse(ResponseMessage response) {
    switch (response) {
      case NewMessage():
        add(
          MessageEvent._receivedMessage(messageEntity: response.messageEntity),
        );
      case DeleteMessage():
        _messages.removeWhere((message) => message.id == response.id);
        add(MessageEvent._receivedMessages(messages: List.from(_messages)));
      case Error():
        add(MessageEvent._addFailureState(message: response.message));
    }
  }

  Future<void> _loadMessage(
    Emitter<MessageState> emit,
    _LoadMessages event,
  ) async {
    emit(MessageState.loading());
    try {
      final messages = await _messageRepository.fetchMessages(
        chatId: event.chatId,
      );
      _messages.clear();
      _messages.addAll(messages);
      emit(MessageState.loaded(messages: List.from(_messages)));
    } on ApiException catch (e) {
      emit(MessageState.failure(message: e.message));
    }
  }

  Future<void> _sendMessage(
    Emitter<MessageState> emit,
    _SendMessage event,
  ) async {
    try {
      _websocketApi.sendMessage(messageEntity: event.messageEntity);
    } on ApiException catch (e) {
      emit(MessageState.failure(message: e.message));
    }
  }

  Future<void> _deleteMessage(
    Emitter<MessageState> emit,
    _DeleteMessage event,
  ) async {
    try {
      _websocketApi.deleteMessage(
        messageId: event.messageId,
        chatId: event.chatId,
      );
    } on ApiException catch (e) {
      emit(MessageState.failure(message: e.message));
    }
  }

  Future<void> _receivedMessage(
    Emitter<MessageState> emit,
    _ReceivedMessage event,
  ) async {
    _messages.add(event.messageEntity);
    emit(MessageState.loaded(messages: List.from(_messages)));
  }

  Future<void> _receivedMessages(
    Emitter<MessageState> emit,
    _ReceivedMessages event,
  ) async {
    emit(MessageState.loaded(messages: event.messages));
  }

  void _addFailureState(
    Emitter<MessageState> emit,
    _AddFailureState event,
  ) async {
    emit(MessageState.failure(message: event.message));
  }

  @override
  Future<void> close() async {
    _websocketApi.closeConnection();
    return super.close();
  }
}
