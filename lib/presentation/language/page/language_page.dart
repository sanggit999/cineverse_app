import 'package:cineverse_app/l10n/app_localizations.dart';
import 'package:cineverse_app/presentation/language/bloc/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.read<LanguageCubit>().state;
    final localizations = AppLocalizations.of(context)!;

    final languagues = [
      {'locale': const Locale('en'), 'name': '🇺🇸 ${localizations.english}'},
      {
        'locale': const Locale('vi'),
        'name': '🇻🇳 ${localizations.vietnamese}',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text(localizations.title)),
      body: ListView.builder(
        itemCount: languagues.length,
        itemBuilder: (_, index) {
          final language = languagues[index];
          final isSelected = language['locale'] == currentLocale;
          return ListTile(
            title: Text(language['name'] as String),
            trailing:
                isSelected ? const Icon(Icons.check, color: Colors.red) : null,
            onTap: () {
              if (!isSelected) {
                context.read<LanguageCubit>().changeLanguage(
                  language['locale'] as Locale,
                );
              }
            },
          );
        },
      ),
    );
  }
}
