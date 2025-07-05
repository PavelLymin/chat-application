import 'dart:async';

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
    _websocketApi.messageStream.listen(
      (message) => add(MessageEvent.receivedMessage(messageEntity: message)),
      onError: (error) =>
          add(MessageEvent._addFailureState(message: error.toString())),
    );
    on<MessageEvent>((event, emit) async {
      switch (event) {
        case _LoadMessages():
          await _loadMessage(emit, event);
        case _SendMessage():
          await _sendMessage(emit, event);
        case _ReceivedMessage():
          await _receivedMessage(emit, event);
        case _AddFailureState():
          _addFailureState(emit, event);
      }
    });
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
      // передаю новый объект List, так как BloC сравнивает
      // сслыки объектов и поэтому он бы не обновил интерфейс
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
      final messageEntity = event.messageEntity;
      _websocketApi.sendMessage(messageEntity: messageEntity);
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
