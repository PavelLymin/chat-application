import 'package:client/common/theme/theme.dart';
import 'package:client/domain/entities/message_entity/message_entity.dart';
import 'package:flutter/material.dart';

class ReceiveMessage extends StatelessWidget {
  const ReceiveMessage({super.key, required this.message});
  final MessageEntity message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onLongPress: () {
          showDialog(
            context: context,
            builder: (context) {
              return Container(color: Colors.amber);
            },
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
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
