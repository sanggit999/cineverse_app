import 'package:flutter/material.dart';

class BaseTextFormField extends StatefulWidget {
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
    required this.obscureText,
    this.keyboardType,
    this.fillColor,
  });

  @override
  State<BaseTextFormField> createState() => _BaseTextFormFieldState();
}

class _BaseTextFormFieldState extends State<BaseTextFormField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor,
        hintText: widget.hintText,
        enabledBorder: widget.enabledBorder,
        suffixIcon:
            widget.obscureText
                ? IconButton(
                  icon: Icon(
                    _isObscured
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
                : null,
      ),
      keyboardType: widget.keyboardType,
      obscureText: _isObscured,
    );
  }
}
