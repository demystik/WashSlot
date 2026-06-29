import 'package:firebase_auth/firebase_auth.dart';
import 'package:washslot/core/models/app_user_model.dart';

class AuthState {
     //App user model______________________
    final AppUser? appUser;
    final User? firebaseUser;

  AuthState({required this.appUser, required this.firebaseUser});

  bool get isLoggedIn => firebaseUser != null;
  String get role => appUser?.role ?? "client";
}


