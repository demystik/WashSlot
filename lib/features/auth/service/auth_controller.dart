import 'package:firebase_auth/firebase_auth.dart';
import 'package:washslot/core/models/app_user_model.dart';
import 'package:washslot/core/services/user_services.dart';

class AuthController{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserServices _userServices = UserServices();
  AppUser? appUser;
  User? get firebaseUser => _auth.currentUser;

  Future<void> loadUser() async {
    final user = _auth.currentUser;
    if(user != null){
      appUser = await _userServices.getUserById(user.uid);
    }
  }
}