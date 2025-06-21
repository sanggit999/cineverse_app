import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
//
import 'package:cineverse_app/data/auth/models/user_signin_req.dart';
import 'package:cineverse_app/data/auth/models/user_signup_req.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class AuthFirebaseService {
  Future<Either> signInWithEmailAndPassword(UserSigninReq userSigninReq);
  Future<Either> signUpWithEmailAndPassword(UserSignupReq userSignupReq);
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<Either> signInWithEmailAndPassword(UserSigninReq userSigninReq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userSigninReq.email!,
        password: userSigninReq.password!,
      );
      return const Right('Đăng nhập thành công');
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';

      if (e.code == 'invalid-email') {
        errorMessage = 'Tài khoản không tồn tại';
      } else if (e.code == 'invalid-credential') {
        errorMessage = 'Mật khẩu sai';
      }

      return Left(errorMessage);
    }
  }

  @override
  Future<Either> signUpWithEmailAndPassword(UserSignupReq userSignupReq) async {
      try {
      var returnedData = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userSignupReq.email!,
              password: userSignupReq.password!);

      String generateRandomUsername() {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final rand = Random();
  final randomStr = List.generate(6, (index) => chars[rand.nextInt(chars.length)]).join();
  return 'user_$randomStr';
}


      await FirebaseFirestore.instance.collection('Users').doc(returnedData.user!.uid).set({
        'username': userSignupReq.username ?? generateRandomUsername(),
        'email': userSignupReq.email,
        'name': userSignupReq.name ?? userSignupReq.username ?? generateRandomUsername(),
        'avatar': userSignupReq.avatar ?? "",
        'gender': userSignupReq.gender ?? 0,
      });

      return const Right('Đăng ký thành công ');
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';

      if (e.code == 'email-already-in-use') {
        errorMessage = 'Email đã tồn tại';
      }

      return Left(errorMessage);
    }
  }
}
