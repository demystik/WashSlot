import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';

class AdminBookings extends StatelessWidget {
  const AdminBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Bookings"),),
      body: Column(children: [ElevatedButton(onPressed: () => context.push(AppRouter.bookingDetailScreen), child: Text("Booking details"))],),
    );
  }
}