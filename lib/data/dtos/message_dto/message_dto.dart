import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

@freezed
@JsonSerializable()
class MessageDto with _$MessageDto {
  MessageDto({required this.message});
  @override
  @JsonKey(name: 'data')
  final String message;

  MessageEntity toDomain() => MessageEntity(message: message);

  factory MessageDto.fromDomain(MessageEntity object) =>
      MessageDto(message: object.message);

  factory MessageDto.fromJson(Map<String, Object?> json) =>
      _$MessageDtoFromJson(json);

  Map<String, Object?> toJson() => _$MessageDtoToJson(this);
}
