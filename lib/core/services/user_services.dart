import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:washslot/core/models/app_user_model.dart';

class UserServices {
  final _database = FirebaseFirestore.instance;

  Future<AppUser> getUserById (String uid) async {
    final doc = await _database.collection('users').doc(uid).get();
    return AppUser.fromMap(uid, doc.data()!);
  }
}