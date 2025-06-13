import 'package:cineverse_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

extension L10nExtension on BuildContext {
  L10n get l10n {
    return L10n.of(this)!;
  }
}
