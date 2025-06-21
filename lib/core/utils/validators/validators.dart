import 'package:cineverse_app/core/extensions/l10n_extension.dart';
import 'package:flutter/material.dart';

class Validator {
  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.l10n.email_required;
    }
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (!emailRegex.hasMatch(value)) {
      return context.l10n.invalid_email;
    }
    return null;
  }

  static String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.l10n.password_required;
    }
    if (value.contains(' ')) {
      return context.l10n.password_no_spaces;
    }
    if (value.contains(RegExp(r'[À-ỹà-ỹ]'))) {
      return context.l10n.password_no_diacritics;
    }
    if (value.length < 8) {
      return context.l10n.password_too_short;
    }
    final hasLetter = RegExp(r'[A-Za-z]').hasMatch(value);
    final hasDigit = RegExp(r'\d').hasMatch(value);
    if (!hasLetter || !hasDigit) {
      return context.l10n.password_invalid_format;
    }
    return null;
  }
}
