import 'package:client/data/dtos/message_dto/message_dto.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';

enum ResponseType {
  newMessage,
  deletedMessage,
  error;

  static ResponseType fromString(String value) {
    return ResponseType.values.firstWhere(
      (element) => element.toString().split('.').last == value,
      orElse: () => throw Exception('Invalid enum value: $value'),
    );
  }
}

sealed class ResponseMessage {
  final ResponseType type;
  ResponseMessage({required this.type});

  factory ResponseMessage.fromJson(Map<String, dynamic> json) {
    switch (ResponseType.fromString(json['type'])) {
      case ResponseType.newMessage:
        return NewMessage.fromJson(json);
      case ResponseType.deletedMessage:
        return DeleteMessage.fromJson(json);
      case ResponseType.error:
        return Error.fromJson(json);
    }
  }
}

class NewMessage extends ResponseMessage {
  final MessageEntity messageEntity;
  NewMessage({
    required this.messageEntity,
    super.type = ResponseType.newMessage,
  });

  factory NewMessage.fromJson(Map<String, dynamic> json) {
    final response = json['message'];
    return NewMessage(messageEntity: MessageDto.fromJson(response).toDomain());
  }
}

class DeleteMessage extends ResponseMessage {
  final String id;
  DeleteMessage({required this.id, super.type = ResponseType.deletedMessage});

  factory DeleteMessage.fromJson(Map<String, dynamic> json) {
    final response = json['message'];
    return DeleteMessage(id: response['id']);
  }
}

class Error extends ResponseMessage {
  final String message;
  Error({required this.message, super.type = ResponseType.deletedMessage});

  factory Error.fromJson(Map<String, dynamic> json) {
    final response = json['message'];
    return Error(message: response);
  }
}
