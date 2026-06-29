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
        ],
      ),
    );
  }
}
