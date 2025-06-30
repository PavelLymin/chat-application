import 'package:flutter/material.dart';

class BaseTextFormField extends StatefulWidget {
  const BaseTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.onTap,
    this.suffixIcon,
  });
  final TextEditingController controller;
  final String hintText;
  final String? Function(String? value)? validator;
  final TextInputType keyboardType;
  final Function()? onTap;
  final Widget? suffixIcon;

  @override
  State<BaseTextFormField> createState() => _BaseTextFormFieldState();
}

class _BaseTextFormFieldState extends State<BaseTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      onChanged: (_) {
        setState(() {});
      },
      decoration: InputDecoration(
        suffixIcon: widget.controller.text.isNotEmpty
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.controller.clear();
                  });
                },
                icon: const Icon(Icons.clear),
              )
            : null,
        hintText: widget.hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
      ),
    );
  }
}
