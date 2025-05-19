import 'package:cineverse_app/presentation/main_navigation_page.dart';
import 'package:cineverse_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:cineverse_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const MainNavigationPage()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        body: Center(child: Image.asset('assets/images/logo.png')),
      ),
    );
  }
}
