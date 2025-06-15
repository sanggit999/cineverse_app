import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    disabledBackgroundColor: Colors.grey.shade400,
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    textStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
  ),
);
