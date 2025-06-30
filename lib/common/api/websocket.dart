import 'dart:convert';
import 'package:client/data/dtos/message_dto/message_dto.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebsocketApi {
  late WebSocketChannel _channel;
  WebsocketApi() {
    _channel = _createWebSocketChannel();
  }

  WebSocketChannel _createWebSocketChannel() {
    final wsUrl = Uri.parse('ws://localhost:3000');
    final chanel = WebSocketChannel.connect(wsUrl);
    return chanel;
  }

  Future<void> closeWebSocketChannel() async {
    await _channel.sink.close();
  }

  void handleWebSocketMessages() {
    _channel.stream.listen((event) {
      final json = jsonDecode(event);
      if (json['type'] == 'message') {
        print(MessageDto.fromJson(json).toDomain().message);
      }
    });
  }

  void sendMessage(MessageEntity message) {
    _channel.sink.add(message.message);
  }
}
