import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final Function()? onPressed;
  final double? width;
  final double? height;
  final String title;
  final Color? backgroundColor;
  final BorderSide? side;

  const BaseButton({
    super.key,
    this.onPressed,
    this.width,
    this.height,
    required this.title,
    this.backgroundColor,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: side,
        backgroundColor: backgroundColor,
        minimumSize: Size(
          width ?? MediaQuery.of(context).size.width,
          height ?? 50,
        ),
      ),
      child: Text(title),
    );
  }
}
