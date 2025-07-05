import 'package:flutter/material.dart';

class RecentContact extends StatelessWidget {
  const RecentContact({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(radius: 30),
          const SizedBox(height: 5),
          Text(name),
        ],
      ),
    );
  }
}
