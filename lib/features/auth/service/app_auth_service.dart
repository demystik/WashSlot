import 'package:firebase_auth/firebase_auth.dart';

class AppAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Sign In____________________________________________
  Future<UserCredential> signIn({required String email, required String password}) async {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  //Sign Out___________________________
  Future<void> signOut()async{
    await _auth.signOut();
  }

  //Current User_________________________________
  User? get currentUser => _auth.currentUser;
  
}