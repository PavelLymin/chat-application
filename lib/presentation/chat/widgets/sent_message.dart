import 'package:client/common/theme/theme.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:client/presentation/chat/widgets/bubble_message.dart';
import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  const SentMessage({super.key, required this.message});
  final MessageEntity message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BubbleMessage(
        needDelete: true,
        messageId: message.id!,
        chatId: message.chatId,
        widget: Container(
          margin: const EdgeInsets.only(right: 30, top: 5, bottom: 5),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(message.content),
        ),
      ),
    );
  }
}
