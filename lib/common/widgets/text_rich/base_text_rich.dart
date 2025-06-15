import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseTextRich extends StatelessWidget {
  final String text1;
  final String text2;
  final Function()? onTap;

  const BaseTextRich({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400),
        children: [
          TextSpan(
            text: ' $text2',
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
