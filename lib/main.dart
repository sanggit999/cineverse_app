import 'package:cineverse_app/core/theme/app_theme.dart';
import 'package:cineverse_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:cineverse_app/presentation/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit()..appStarted(),
      child: MaterialApp(
        title: 'CineVerse',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
