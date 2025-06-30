import 'package:client/common/api/websocket.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:client/domain/repositories/message_repository.dart';

class MessageRepositoryImpl implements IMessageRepository {
  final WebsocketApi websocketApi;
  MessageRepositoryImpl({required this.websocketApi});

  @override
  void fetchMessages() {
    websocketApi.handleWebSocketMessages();
  }

  @override
  void sendMessage({required MessageEntity message}) {
    websocketApi.sendMessage(message);
  }

  @override
  Future<void> closeConnect() async {
    await websocketApi.closeWebSocketChannel();
  }
}
