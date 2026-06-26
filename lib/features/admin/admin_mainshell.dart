import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AdminMainshell extends StatelessWidget {
  const AdminMainshell({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.layoutDashboard, color: Colors.black26),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.server, color: Colors.black26),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.frame, color: Colors.black26),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.personStanding, color: Colors.black26),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
