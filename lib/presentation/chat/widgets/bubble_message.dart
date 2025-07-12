import 'package:client/common/blocs/message_bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BubbleMessage extends StatelessWidget {
  BubbleMessage({
    super.key,
    required this.widget,
    required this.messageId,
    required this.chatId,
  });
  final String messageId;
  final String chatId;
  final Widget widget;
  final options = <PopupMenuEntry<dynamic>>[
    PopupMenuItem(
      value: 'Удалить',
      child: ListTile(title: Text('Удалить')),
    ),
    PopupMenuItem(
      value: 'Скопировать',
      child: ListTile(title: Text('Скопировать')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        final RelativeRect position = RelativeRect.fromRect(
          Rect.fromPoints(details.globalPosition, details.globalPosition),
          Offset(0, -20) & Size(40, 40),
        );
        showMenu(context: context, items: options, position: position).then((
          value,
        ) {
          if (value == 'Удалить' && context.mounted) {
            context.read<MessageBloc>().add(
              MessageEvent.deleteMessage(messageId: messageId, chatId: chatId),
            );
          }
          if (value == 'Скопировать') {}
        });
      },
      child: widget,
    );
  }
}
