import 'package:client/common/blocs/message_bloc/message_bloc.dart';
import 'package:client/common/theme/theme.dart';
import 'package:client/common/widgets/text_field.dart';
import 'package:client/core/extensions/build_context_ext.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({
    super.key,
    required this.controller,
    required this.chatId,
    required this.senderId,
  });
  final TextEditingController controller;
  final String chatId;
  final String senderId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          GestureDetector(child: Icon(Icons.camera_alt), onTap: () {}),
          const SizedBox(width: 10),
          Expanded(
            child: BasicTextField(
              controller: controller,
              hintText: 'Сообщение',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.color.borderInputTextColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.color.borderInputTextColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            child: Icon(Icons.send),
            onTap: () {
              if (controller.text.isNotEmpty) {
                final messageEntity = MessageEntity(
                  chatId: chatId,
                  senderId: senderId,
                  content: controller.text,
                );
                context.read<MessageBloc>().add(
                  MessageEvent.sendMessage(messageEntity: messageEntity),
                );
                controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
