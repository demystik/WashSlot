import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class ClientProfile extends StatelessWidget {
  const ClientProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.push(AppRouter.termsOfService),
            child: Text("T&C"),
          ),
          ElevatedButton(
            onPressed: () => context.push(AppRouter.privacyPolicy),
            child: Text("PrivacyPolicy"),
          ),
           ElevatedButton(onPressed: (){
          FirebaseAuth.instance.signOut();
          context.go(AppRouter.loginScreen);
          }, 
          child: Text("Logout"),),
        ],
      ),
    );
  }
}
