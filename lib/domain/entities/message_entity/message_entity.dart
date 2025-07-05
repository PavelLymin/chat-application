import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  MessageEntity({
    this.id,
    this.createdAt,
    required this.chatId,
    required this.senderId,
    required this.content,
  });
  @override
  final String? id;
  @override
  final String chatId;
  @override
  final String senderId;
  @override
  final String content;
  @override
  final DateTime? createdAt;
}
