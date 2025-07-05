part of 'message_bloc.dart';

@freezed
sealed class MessageState with _$MessageState {
  const factory MessageState.initial() = Initial;
  const factory MessageState.loading() = Loading;
  const factory MessageState.loaded({required List<MessageEntity> messages}) =
      Loaded;
  const factory MessageState.failure({required String message}) = Failure;
}
