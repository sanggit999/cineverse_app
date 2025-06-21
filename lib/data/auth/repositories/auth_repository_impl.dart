import 'package:cineverse_app/data/auth/models/user_signin_req.dart';
import 'package:cineverse_app/data/auth/models/user_signup_req.dart';
import 'package:cineverse_app/data/auth/sources/auth_firebase_service.dart';
import 'package:cineverse_app/domain/auth/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository{
  final AuthFirebaseService authFirebaseService;

  AuthRepositoryImpl(this.authFirebaseService);

  @override
  Future<Either> signInWithEmailAndPassword(UserSigninReq userSigninReq) async {
    return await authFirebaseService.signInWithEmailAndPassword(userSigninReq);
  }

  @override
  Future<Either> signUpWithEmailAndPassword(UserSignupReq userSignupReq) {
      return authFirebaseService.signUpWithEmailAndPassword(userSignupReq);
  }
}