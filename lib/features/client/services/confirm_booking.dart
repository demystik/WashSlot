import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Confirm booking"),),body: Column(children: [ElevatedButton(onPressed: ()=> context.go(AppRouter.clientDashboard), child: Text("back to dashboard"),),],),);
  }
}