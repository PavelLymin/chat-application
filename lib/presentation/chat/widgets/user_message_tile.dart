import 'package:auto_route/auto_route.dart';
import 'package:client/common/blocs/chat_bloc/bloc/chat_bloc.dart';
import 'package:client/common/router/router.gr.dart';
import 'package:client/domain/entities/chat_entity/chat_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserMessageTile extends StatelessWidget {
  const UserMessageTile({super.key, required this.chatEntity});
  final ChatEntity chatEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ChatBloc>().add(
          ChatEvent.joinToChat(chatId: chatEntity.id),
        );
        context.router.replace(Message(chatId: chatEntity.id));
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: const CircleAvatar(radius: 30),
        title: Text(chatEntity.participantName),
        subtitle: Text(
          chatEntity.lastMessage ?? '',
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(chatEntity.lastMessageTime?.timeZoneName ?? ''),
      ),
    );
  }
}
