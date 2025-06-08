import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//
import 'package:cineverse_app/core/routers/app_router.dart';
import 'package:cineverse_app/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//
import 'package:cineverse_app/core/theme/app_theme.dart';
import 'package:cineverse_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:cineverse_app/presentation/language/bloc/language_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SplashCubit()..appStarted()),
        BlocProvider(create: (_) => LanguageCubit()..loadSavedLanguage()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'CineVerse',
          locale: state,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,
        );
      },
    );
  }
}
