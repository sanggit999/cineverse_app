import 'package:cineverse_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocalizationExtension on BuildContext {

  AppLocalizations get l10n {
    return AppLocalizations.of(this)!;
  }
}