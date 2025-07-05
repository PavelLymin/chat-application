import 'package:client/domain/entities/chat_entity/chat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

@freezed
@JsonSerializable()
class ChatDto with _$ChatDto {
  ChatDto({
    required this.id,
    required this.participantName,
    required this.lastMessage,
    required this.lastMessageTime,
  });
  @override
  @JsonKey(name: 'chat_id')
  final String id;
  @override
  @JsonKey(name: 'participant_name')
  final String participantName;
  @override
  @JsonKey(name: 'last_message')
  final String lastMessage;
  @override
  @JsonKey(name: 'last_message_time')
  final DateTime lastMessageTime;

  ChatEntity toDomain() => ChatEntity(
    id: id,
    participantName: participantName,
    lastMessage: lastMessage,
    lastMessageTime: lastMessageTime,
  );

  factory ChatDto.fromDomain(ChatEntity object) => ChatDto(
    id: object.id,
    participantName: object.participantName,
    lastMessage: object.lastMessage,
    lastMessageTime: object.lastMessageTime,
  );

  factory ChatDto.fromJson(Map<String, Object?> json) =>
      _$ChatDtoFromJson(json);

  Map<String, Object?> toJson() => _$ChatDtoToJson(this);
}
