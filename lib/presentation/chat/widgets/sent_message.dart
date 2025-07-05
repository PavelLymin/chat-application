import 'package:client/common/theme/theme.dart';
import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  const SentMessage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(right: 30, top: 5, bottom: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(message),
      ),
    );
  }
}
