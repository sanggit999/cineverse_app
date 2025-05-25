import 'package:cineverse_app/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
//
import 'package:cineverse_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:cineverse_app/presentation/splash/bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          context.go(Routes.login);
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        body: Center(child: Image.asset('assets/images/logo.png')),
      ),
    );
  }
}
