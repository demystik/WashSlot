import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class AppointmentBookingScreen extends StatelessWidget {
  const AppointmentBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("appointment booking"),),body: Column(children: [ElevatedButton(onPressed: ()=> context.push(AppRouter.confirmBookingScreen), child: Text("confirm booking"),),],),);
  }
}