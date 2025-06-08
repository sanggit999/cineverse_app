import 'package:flutter/material.dart';

class BaseTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final InputBorder? enabledBorder;
    final Color? fillColor;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const BaseTextFormField({
    super.key,
    required this.controller,
    this.enabledBorder,
    this.hintText,
    required this.obscureText, this.keyboardType, this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        enabledBorder: enabledBorder,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
