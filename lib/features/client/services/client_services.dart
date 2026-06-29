import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class ClientServices extends StatelessWidget {
  const ClientServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), body: Column(children: [ElevatedButton(onPressed: () => context.push(AppRouter.serviceProviderScreen), child: Text("service provider"))],),);
  }
}