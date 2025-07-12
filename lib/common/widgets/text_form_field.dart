import 'package:flutter/material.dart';

class BasicTextFormField extends StatefulWidget {
  const BasicTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.onTap,
    this.suffixIcon,
  });
  final TextEditingController controller;
  final String hintText;
  final String? Function(String? value)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function()? onTap;
  final Widget? suffixIcon;

  @override
  State<BasicTextFormField> createState() => _BasicTextFormFieldState();
}

class _BasicTextFormFieldState extends State<BasicTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
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
