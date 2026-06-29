import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class ClientDashboard extends StatelessWidget {
  const ClientDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(),
      body: Column(children: [
        ElevatedButton(onPressed: ()=> context.push(AppRouter.serviceProviderScreen), child: Text("service screen"),),
      ],),
      );
  }
}