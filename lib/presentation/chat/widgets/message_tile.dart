import 'package:auto_route/auto_route.dart';
import 'package:client/common/api/websocket.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/domain/entities/chat_entity/chat_entity.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key, required this.chatEntity});
  final ChatEntity chatEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GetIt.instance<WebsocketApi>().joinToChat(
          chatId: 'e70730b1-926a-4d71-8e21-e20a3f079e1b',
        );
        context.router.replace(
          Message(chatId: 'e70730b1-926a-4d71-8e21-e20a3f079e1b'),
        );
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: const CircleAvatar(radius: 30),
        title: Text(chatEntity.participantName),
        subtitle: Text(chatEntity.lastMessage, overflow: TextOverflow.ellipsis),
        trailing: Text(chatEntity.lastMessageTime.timeZoneName),
      ),
    );
  }
}
