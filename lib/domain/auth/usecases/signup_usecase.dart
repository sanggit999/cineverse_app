import 'package:cineverse_app/core/usecase/usecase.dart';
import 'package:cineverse_app/data/auth/models/user_signup_req.dart';
import 'package:cineverse_app/domain/auth/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignupUsecase implements Usecase<Either, UserSignupReq> {
  final AuthRepository authRepository;

  SignupUsecase(this.authRepository);
  @override
  Future<Either> call(UserSignupReq? params) async {
    return await authRepository.signUpWithEmailAndPassword(params!);
  }
}
