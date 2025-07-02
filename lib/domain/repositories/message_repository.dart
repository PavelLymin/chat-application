import 'package:client/domain/entities/message_entity/message_entity.dart';

abstract interface class IMessageRepository {
  void fetchMessages();
  void sendMessage({required MessageEntity messageEntity});
  Future<void> closeConnect();
}
