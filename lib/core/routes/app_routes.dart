// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:washslot/features/auth/presentation/login_page.dart';
import 'package:washslot/features/onboarding/presentation/first_onboarding.dart';
import 'package:washslot/features/onboarding/presentation/second_onboarding.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/first_onboarding_screen',
  routes: [
    GoRoute(
      path: '/first_onboarding_screen',
      builder: (context, state) => const FirstOnboarding(),
    ),
    
    GoRoute(
      path: '/second_onboarding_screen',
      builder: (context, state) => const SecondOnboarding(),
    ),

    GoRoute(path: "/login_screen",
    builder: (context, state) => const LoginPage(),
    )
  ]
);