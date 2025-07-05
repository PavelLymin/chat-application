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
  ChatBloc({required IChatRepository chatRepository})
    : _chatRepository = chatRepository,
      super(ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      switch (event) {
        case _FetchChats():
          await _fetchChats(emit);
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
    } on AuthException catch (e) {
      emit(ChatState.failure(message: e.message));
    }
  }
}
