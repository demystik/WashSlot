import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: Column(children: [
        ElevatedButton(onPressed: ()=> context.push(AppRouter.editCarwashInfo), child: Text("Edit carwash info"),),
        ElevatedButton(onPressed: ()=> context.push(AppRouter.editPersonalInfo), child: Text("Edit personal info"),),
        ElevatedButton(onPressed: ()=> context.push(AppRouter.helpCenter), child: Text("help center"),),
        ElevatedButton(onPressed: ()=> context.push(AppRouter.notificationPref), child: Text("notification pref"),),
        ElevatedButton(onPressed: ()=> context.push(AppRouter.privacyPolicy), child: Text("Privacy policy"),),
        ElevatedButton(onPressed: ()=> context.push(AppRouter.termsOfService), child: Text("Terms of service"),),
        ElevatedButton(onPressed: (){
          FirebaseAuth.instance.signOut();
          context.go(AppRouter.loginScreen);
          }, 
          child: Text("Logout"),),
      ],),
      );
  }
}