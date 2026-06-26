// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/features/admin/booking/admin_bookings.dart';
import 'package:washslot/features/admin/dashboard/admin_dashboard.dart';
import 'package:washslot/features/admin/admin_mainshell.dart';
import 'package:washslot/features/admin/profile/admin_profile.dart';
import 'package:washslot/features/admin/services/admin_services.dart';
import 'package:washslot/features/auth/presentation/login_page.dart';
import 'package:washslot/features/auth/presentation/reset_password_screen.dart';
import 'package:washslot/features/auth/presentation/signup_screen.dart';
import 'package:washslot/features/onboarding/presentation/first_onboarding.dart';
import 'package:washslot/features/onboarding/presentation/second_onboarding.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/first_onboarding_screen',
  routes: [

    //Statefull Shell________________________________________________
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AdminMainshell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin_dashboard",
              builder: (context, state) => const AdminDashboard(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin_bookings",
              builder: (context, state) => const AdminBookings(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin_services",
              builder: (context, state) => const AdminServices(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin_Profile",
              builder: (context, state) => const AdminProfile(),
            ),
          ],
        ),
      ],
    ),




    GoRoute(
      path: '/first_onboarding_screen',
      builder: (context, state) => const FirstOnboarding(),
    ),

    GoRoute(
      path: '/second_onboarding_screen',
      builder: (context, state) => const SecondOnboarding(),
    ),

    GoRoute(
      path: "/login_screen",
      builder: (context, state) => const LoginPage(),
    ),

    GoRoute(
      path: "/signup_screen",
      builder: (context, state) => SignupScreen(),
    ),
    GoRoute(
      path: "/reset_password_screen",
      builder: (context, state) => const ResetPasswordScreen(),
    ),
  ],
);
