import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_entity.freezed.dart';

@freezed
class ChatEntity with _$ChatEntity {
  ChatEntity({
    required this.id,
    required this.participantName,
    this.lastMessage,
    this.lastMessageTime,
  });
  @override
  final String id;
  @override
  final String participantName;
  @override
  final String? lastMessage;
  @override
  final DateTime? lastMessageTime;
}
