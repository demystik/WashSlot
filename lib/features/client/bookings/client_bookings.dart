import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class ClientBookings extends StatelessWidget {
  const ClientBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), body: Column(children: [ElevatedButton(onPressed: () => context.push(AppRouter.bookingDetailScreen), child: Text("booking detail"))],),);
  }
}