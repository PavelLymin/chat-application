import 'package:client/common/blocs/message_bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BubbleMessage extends StatefulWidget {
  const BubbleMessage({
    super.key,
    required this.needDelete,
    required this.widget,
    required this.messageId,
    required this.chatId,
  });
  final bool needDelete;
  final String messageId;
  final String chatId;
  final Widget widget;

  @override
  State<BubbleMessage> createState() => _BubbleMessageState();
}

class _BubbleMessageState extends State<BubbleMessage> {
  final options = <PopupMenuEntry<dynamic>>[];

  @override
  void initState() {
    super.initState();
    options.addAll(<PopupMenuEntry<dynamic>>[
      if (widget.needDelete)
        PopupMenuItem(
          value: 'Удалить',
          child: ListTile(title: Text('Удалить')),
        ),
      PopupMenuItem(
        value: 'Скопировать',
        child: ListTile(title: Text('Скопировать')),
      ),
    ]);
  }

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
              MessageEvent.deleteMessage(
                messageId: widget.messageId,
                chatId: widget.chatId,
              ),
            );
          }
          if (value == 'Скопировать') {}
        });
      },
      child: widget.widget,
    );
  }
}
