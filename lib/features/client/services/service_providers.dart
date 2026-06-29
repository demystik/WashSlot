import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class ServiceProvidersScreen extends StatelessWidget {
  const ServiceProvidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Service Provider"),),body: Column(children: [ElevatedButton(onPressed: ()=> context.push(AppRouter.appointmentBookingScreen), child: Text("Book appointment"),),],),);
  }
}