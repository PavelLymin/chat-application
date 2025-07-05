import 'package:client/domain/entities/message_entity/message_entity.dart';

abstract interface class IMessageRepository {
  Future<List<MessageEntity>> fetchMessages({required String chatId});
  Future<void> sendMessage({required MessageEntity message});
}
