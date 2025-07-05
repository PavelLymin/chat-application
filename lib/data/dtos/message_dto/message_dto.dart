import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

@freezed
@JsonSerializable()
class MessageDto with _$MessageDto {
  MessageDto({
    this.id,
    this.createdAt,
    required this.chatId,
    required this.senderId,
    required this.content,
  });
  @override
  @JsonKey(includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'chat_id')
  final String chatId;
  @override
  @JsonKey(name: 'sender_id')
  final String senderId;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  final DateTime? createdAt;

  MessageEntity toDomain() => MessageEntity(
    id: id,
    chatId: chatId,
    senderId: senderId,
    content: content,
    createdAt: createdAt,
  );

  factory MessageDto.fromDomain(MessageEntity object) => MessageDto(
    id: object.id,
    chatId: object.chatId,
    senderId: object.senderId,
    content: object.content,
    createdAt: object.createdAt,
  );

  factory MessageDto.fromJson(Map<String, Object?> json) =>
      _$MessageDtoFromJson(json);

  Map<String, Object?> toJson() => _$MessageDtoToJson(this);
}
