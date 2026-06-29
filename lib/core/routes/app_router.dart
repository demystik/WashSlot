class AppRouter {
  // OnBoarding screens__________________________________
  static const firstOnboarding = '/first_onboarding_screen';
  static const secondOnboarding = '/second_onboarding_screen';


  //Auth Screens________________________________________
  static const loginScreen = "/login_screen";
  static const resetPasswordScreen = "/reset_password_screen";
  static const signUpScreen = "/signup_screen";

  //Admin Nav Screens__________________________________
  static const adminDashboard = "/admin/dashboard";
  static const admingBookings = "/admin/bookings";
  static const adminServices = "/admin/services";
  static const adminProfile = "/admin/profile";

  //Admin setup and management______________________________________
  static const adminManageAvailability = "/admin/dashboard/manage_availability";
  static const adminCarWashSetup = "/admin/dashboard/carwash_setup";
  static const bookingDetailScreen = "/booking_detail_screen";
  static const editPersonalInfo = "/edit_personal_info";
  static const editCarwashInfo = "/edit_carwash_info";
  static const notificationPref = "/notificatio_pref";
  static const termsOfService = "/terms_of_service";
  static const privacyPolicy = "/privacy_polity";
  static const helpCenter = "/help_center";


  //Client Nav Screens______________________________________
  static const clientDashboard = "client_dashboard";
  static const clientBookings = "client_bookings";
  static const clientServices = "client_services";
  static const clientProfile = "client_profile";

  //Client services screens___________________________
  static const serviceProviderScreen = "service_provider_screen";
  static const appointmentBookingScreen = "appointment_booking_screen";
  static const confirmBookingScreen = "confirm_booking_screen";
  static const clientBookingDetails = "client/bookings/confirm_detail";
}

const protectedRoutes = [
  //General protected routes___________________________
  "/notificatio_pref",
  "/terms_of_service",
  "/privacy_polity",
  "/help_center",



  //Admin Nav Screens__________________________________
  "/admin/dashboard",
  "/admin/bookings",
  "/admin/services",
  "/admin/profile",

  //Admin setup and management______________________________________
 "/admin/dashboard/manage_availability",
 "/admin/dashboard/carwash_setup",
 "/booking_detail_screen",
 "/edit_personal_info",
 "/edit_carwash_info",


  //Client Nav Screens______________________________________
  "client_dashboard",
  "client_bookings",
  "client_services",
  "client_profile",

  //Client services screens___________________________
  "service_provider_screen",
  "appointment_booking_screen",
  "confirm_booking_screen",
  "client/bookings/confirm_detail",
];

const adminRoutes = [
    //Admin Nav Screens__________________________________
  "/admin/dashboard",
  "/admin/bookings",
  "/admin/services",
  "/admin/profile",

  //Admin setup and management______________________________________
 "/admin/dashboard/manage_availability",
 "/admin/dashboard/carwash_setup",
 "/booking_detail_screen",
 "/edit_personal_info",
 "/edit_carwash_info",
  "/notificatio_pref",

   //General protected routes___________________________
  "/notificatio_pref",
  "/terms_of_service",
  "/privacy_polity",
  "/help_center",
];

const userRoutes = [
  //Client Nav Screens______________________________________
  "client_dashboard",
  "client_bookings",
  "client_services",
  "client_profile",

  //Client services screens___________________________
  "service_provider_screen",
  "appointment_booking_screen",
  "confirm_booking_screen",
  "client/bookings/confirm_detail",

  //General protected routes___________________________
  "/notificatio_pref",
  "/terms_of_service",
  "/privacy_polity",
  "/help_center",
];