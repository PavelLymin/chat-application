part of 'message_bloc.dart';

@freezed
sealed class MessageEvent with _$MessageEvent {
  const factory MessageEvent.loadMessages({required String chatId}) =
      _LoadMessages;
  const factory MessageEvent.sendMessage({
    required MessageEntity messageEntity,
  }) = _SendMessage;
  const factory MessageEvent.deleteMessage({
    required String messageId,
    required String chatId,
  }) = _DeleteMessage;
  const factory MessageEvent._receivedMessage({
    required MessageEntity messageEntity,
  }) = _ReceivedMessage;
  const factory MessageEvent._receivedMessages({
    required List<MessageEntity> messages,
  }) = _ReceivedMessages;
  const factory MessageEvent._addFailureState({required String message}) =
      _AddFailureState;
}
