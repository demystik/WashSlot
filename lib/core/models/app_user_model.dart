class AppUser {
  final String uid;
  final String role;

  AppUser({required this.uid, required this.role});

  factory AppUser.fromMap(String uid, Map<String, dynamic> data){
    return AppUser(
      uid: uid, 
      role: data['role'] ?? 'client',
      );
  }
}