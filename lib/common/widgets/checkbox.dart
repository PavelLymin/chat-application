import 'package:flutter/material.dart';

class BasicCheckbox extends StatelessWidget {
  const BasicCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: value, onChanged: onChanged);
  }
}
