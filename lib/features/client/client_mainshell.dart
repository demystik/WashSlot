import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ClientMainshell extends StatelessWidget {
  const ClientMainshell({super.key, required this.clientNavShell});
  final StatefulNavigationShell clientNavShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: clientNavShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: clientNavShell.currentIndex,
        onTap: (index) {
          clientNavShell.goBranch(
            index,
            initialLocation: index == clientNavShell.currentIndex,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.layoutDashboard, color: Colors.black26),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.factory, color: Colors.black26),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.van, color: Colors.black26),
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
