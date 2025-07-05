// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) => ChatDto(
  id: json['chat_id'] as String,
  participantName: json['participant_name'] as String,
  lastMessage: json['last_message'] as String,
  lastMessageTime: DateTime.parse(json['last_message_time'] as String),
);

Map<String, dynamic> _$ChatDtoToJson(ChatDto instance) => <String, dynamic>{
  'chat_id': instance.id,
  'participant_name': instance.participantName,
  'last_message': instance.lastMessage,
  'last_message_time': instance.lastMessageTime.toIso8601String(),
};
