import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/core/routes/app_router.dart';
import 'package:washslot/core/theme/app_spacing.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin dashboard"),),
      body: ListView(
        padding: EdgeInsets.all(AppSpacing.lg),
        children: [
          ElevatedButton(onPressed: (){
            context.push(AppRouter.adminCarWashSetup);
          }, child: Text("Car wash setup")),
          ElevatedButton(onPressed: (){
            context.push(AppRouter.adminManageAvailability);
          }, child: Text("Manage Availability")),
      ],),
      );
  }
}