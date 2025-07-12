part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchChats() = _FetchChats;
  const factory ChatEvent.joinToChat({required String chatId}) = _JoinToChat;
}
