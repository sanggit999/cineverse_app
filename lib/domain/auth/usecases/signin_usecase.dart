import 'package:cineverse_app/core/usecase/usecase.dart';
import 'package:cineverse_app/data/auth/models/user_signin_req.dart';
import 'package:cineverse_app/domain/auth/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SigninUsecase implements Usecase<Either, UserSigninReq> {
  final AuthRepository authRepository;

  SigninUsecase(this.authRepository);
  @override
  Future<Either> call(UserSigninReq? params) async {
    return await authRepository.signInWithEmailAndPassword(params!);
  }
}
