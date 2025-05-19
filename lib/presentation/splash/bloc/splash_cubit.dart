import 'package:cineverse_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() {
    Future.delayed(const Duration(seconds: 2), () {
      emit(UnAuthenticated());
    });
  }
}
