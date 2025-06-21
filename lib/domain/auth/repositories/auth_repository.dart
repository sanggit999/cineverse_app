import 'package:cineverse_app/data/auth/models/user_signin_req.dart';
import 'package:cineverse_app/data/auth/models/user_signup_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signInWithEmailAndPassword(UserSigninReq userSigninReq);
  Future<Either> signUpWithEmailAndPassword(UserSignupReq userSignupReq);
}
