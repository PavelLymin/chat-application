import 'package:client/common/api/websocket.dart';
import 'package:client/core/exceptions.dart';
import 'package:client/domain/repositories/chat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/domain/entities/chat_entity/chat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;
  final WebsocketApi _websocketApi;
  ChatBloc({
    required IChatRepository chatRepository,
    required WebsocketApi websocketApi,
  }) : _chatRepository = chatRepository,
       _websocketApi = websocketApi,
       super(ChatState.loading()) {
    on<ChatEvent>((event, emit) async {
      switch (event) {
        case _FetchChats():
          await _fetchChats(emit);
        case _JoinToChat():
          await _joinToChat(emit, event);
        case _CreateChat():
          await _createChat(emit, event);
      }
    });
  }

  Future<void> _fetchChats(Emitter<ChatState> emit) async {
    emit(ChatState.loading());
    try {
      final chats = await _chatRepository.fetchChats();
      emit(ChatState.loaded(chats: chats));
    } on ApiException catch (e) {
      emit(ChatState.failure(message: e.message));
    }
  }

  Future<void> _joinToChat(Emitter<ChatState> emit, _JoinToChat event) async {
    try {
      _websocketApi.joinToChat(chatId: event.chatId);
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  Future<void> _createChat(Emitter<ChatState> emit, _CreateChat event) async {
    emit(ChatState.loading());
    try {
      await _chatRepository.createChat(participantId: event.participantId);
      add(ChatEvent.fetchChats());
    } on ApiException catch (e) {
      emit(ChatState.failure(message: e.message));
    }
  }
}
