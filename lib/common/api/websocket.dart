import 'dart:async';
import 'dart:convert';

import 'package:client/data/dtos/message_dto/message_dto.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebsocketApi {
  late WebSocketChannel _channel;
  Stream<dynamic> get stream => _channel.stream;
  WebsocketApi() {
    _connect();
  }

  Stream<MessageEntity> get messageStream => _channel.stream
      .where((data) => jsonDecode(data)['type'] == 'newMessage')
      .map((data) {
        final json = jsonDecode(data)['message'];
        return MessageDto.fromJson(json).toDomain();
      });

  void _connect() {
    final wsUrl = Uri.parse('ws://localhost:3000');
    _channel = WebSocketChannel.connect(wsUrl);
  }

  void joinToChat({required String chatId}) {
    final messageMap = {'type': 'joinToChat', 'chat_id': chatId};
    final json = jsonEncode(messageMap);
    _channel.sink.add(json);
  }

  void sendMessage({required MessageEntity messageEntity}) {
    final messageMap = {
      'type': 'sendMessage',
      'message': MessageDto.fromDomain(messageEntity).toJson(),
    };
    final json = jsonEncode(messageMap);
    _channel.sink.add(json);
  }

  Future<void> closeConnection() async {
    await _channel.sink.close();
  }
}
