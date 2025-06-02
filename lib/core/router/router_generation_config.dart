import 'package:go_router/go_router.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/features/auth/login/views/login_screen.dart';
import 'package:intallek/features/auth/register/views/register_page.dart';
import 'package:intallek/features/auth/verification/views/verification_page.dart';
import 'package:intallek/features/client_app/delivery/main/delivery_page.dart';
import 'package:intallek/features/client_app/navigation_bar/app_navigation_bar.dart';
import 'package:intallek/features/client_app/ride/main/ride_page.dart';
import 'package:intallek/features/client_app/ride/ride_details/ride_details_page.dart';
import 'package:intallek/features/client_app/ride/select_location/select_location_ride_page.dart';
import 'package:intallek/features/onboarding/views/onboarding_screen.dart';
import 'package:intallek/features/splash/views/splash_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splashScreen,
    routes: [
      GoRoute(
        path: AppRoutes.splashScreen,
        name: AppRoutes.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onbordingScreen,
        name: AppRoutes.onbordingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: AppRoutes.verificationPage,
        name: AppRoutes.verificationPage,
        builder: (context, state) => const VerificationPage(),
      ),
      GoRoute(
        path: AppRoutes.appNavigationBar,
        name: AppRoutes.appNavigationBar,
        builder: (context, state) => const AppNavigationBar(),
      ),
      GoRoute(
        path: AppRoutes.ridePage,
        name: AppRoutes.ridePage,
        builder: (context, state) => const RidePage(),
      ),
      GoRoute(
        path: AppRoutes.deliveryPage,
        name: AppRoutes.deliveryPage,
        builder: (context, state) => const DeliveryPage(),
      ),
      GoRoute(
        path: AppRoutes.selectLocationPage,
        name: AppRoutes.selectLocationPage,
        builder: (context, state) => const SelectLocationRidePage(),
      ),
      GoRoute(
        path: AppRoutes.rideDetailsPage,
        name: AppRoutes.rideDetailsPage,
        builder: (context, state) => const RideDetailsPage(),
      ),
    ],
  );
}
