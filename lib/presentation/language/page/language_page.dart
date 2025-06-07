import 'package:cineverse_app/l10n/app_localizations.dart';
import 'package:cineverse_app/presentation/language/bloc/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.watch<LanguageCubit>().state;

    final localizations = AppLocalizations.of(context)!;

    final languagues = [
      {
        'locale': const Locale('en'),
        'name': '🇺🇸     ${localizations.english}',
      },
      {
        'locale': const Locale('vi'),
        'name': '🇻🇳     ${localizations.vietnamese}',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          localizations.title,
          style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: languagues.length,
        itemBuilder: (_, index) {
          final language = languagues[index];
          final isSelected = language['locale'] == currentLocale;
          return ListTile(
            title: Text(
              language['name'] as String,
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
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
