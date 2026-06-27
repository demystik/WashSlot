import 'package:go_router/go_router.dart';
import 'package:washslot/features/admin/admin_carwash_setup.dart';
import 'package:washslot/features/admin/admin_manage_availability.dart';
import 'package:washslot/features/admin/booking/admin_bookings.dart';
import 'package:washslot/features/admin/booking/booking_detail.dart';
import 'package:washslot/features/admin/dashboard/admin_dashboard.dart';
import 'package:washslot/features/admin/admin_mainshell.dart';
import 'package:washslot/features/admin/profile/admin_profile.dart';
import 'package:washslot/features/admin/profile/edit_carwash_info.dart';
import 'package:washslot/features/admin/profile/edit_personal_info.dart';
import 'package:washslot/features/admin/profile/help_center.dart';
import 'package:washslot/features/admin/profile/notification_pref.dart';
import 'package:washslot/features/legal/privacy_policy.dart';
import 'package:washslot/features/legal/terms_of_service.dart';
import 'package:washslot/features/admin/services/admin_services.dart';
import 'package:washslot/features/auth/presentation/login_page.dart';
import 'package:washslot/features/auth/presentation/reset_password_screen.dart';
import 'package:washslot/features/auth/presentation/signup_screen.dart';
import 'package:washslot/features/client/bookings/client_bookings.dart';
import 'package:washslot/features/client/client_mainshell.dart';
import 'package:washslot/features/client/dashboard/client_dashboard.dart';
import 'package:washslot/features/client/profile/client_profile.dart';
import 'package:washslot/features/client/services/appointment_booking.dart';
import 'package:washslot/features/client/services/client_services.dart';
import 'package:washslot/features/client/services/confirm_booking.dart';
import 'package:washslot/features/client/services/service_providers.dart';
import 'package:washslot/features/onboarding/presentation/first_onboarding.dart';
import 'package:washslot/features/onboarding/presentation/second_onboarding.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/first_onboarding_screen',
  routes: [
    //Admin Statefull Shell________________________________________________
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AdminMainshell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin/dashboard",
              builder: (context, state) => const AdminDashboard(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin/bookings",
              builder: (context, state) => const AdminBookings(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin/services",
              builder: (context, state) => const AdminServices(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/admin/profile",
              builder: (context, state) => const AdminProfile(),
            ),
          ],
        ),
      ],
    ),

    //Client Statefull Shell__________________________________________________
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ClientMainshell(clientNavShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/client_dashboard",
              builder: (context, state) => const ClientDashboard(),
            ),
            GoRoute(
              path: "/client_bookings",
              builder: (context, state) => const ClientBookings(),
            ),
            GoRoute(
              path: "/client_services",
              builder: (context, state) => const ClientServices(),
            ),
            GoRoute(
              path: "/client_profile",
              builder: (context, state) => const ClientProfile(),
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
    GoRoute(
      path: "/admin/dashboard/carwash_setup",
      builder: (context, state) => const AdminCarwashSetup(),
    ),
    GoRoute(
      path: "/admin/dashboard/manage_availability",
      builder: (context, state) => const AdminManageAvailability(),
    ),
    GoRoute(
      path: "/booking_detail_screen",
      builder: (context, state) => const BookingDetail(),
    ),
    GoRoute(
      path: "/edit_carwash_info",
      builder: (context, state) => const EditCarwashInfo(),
    ),
    GoRoute(
      path: "/edit_personal_info",
      builder: (context, state) => const EditPersonalInfo(),
    ),
    GoRoute(
      path: "/help_center",
      builder: (context, state) => const HelpCenter(),
    ),
    GoRoute(
      path: "/notificatio_pref",
      builder: (context, state) => const NotificationPref(),
    ),
    GoRoute(
      path: "/privacy_polity",
      builder: (context, state) => const PrivacyPolicy(),
    ),
    GoRoute(
      path: "/terms_of_service",
      builder: (context, state) => const TermsOfService(),
    ),
    GoRoute(
      path: "/service_provider_screen",
      builder: (context, state) => const ServiceProvidersScreen(),
    ),
    GoRoute(
      path: "/appointment_booking_screen",
      builder: (context, state) => const AppointmentBookingScreen(),
    ),
    GoRoute(
      path: "/confirm_booking_screen",
      builder: (context, state) => const ConfirmBookingScreen(),
    ),
  ],
);
