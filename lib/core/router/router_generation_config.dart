import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/features/auth/login/views/login_screen.dart';
import 'package:intallek/features/auth/register/views/register_page.dart';
import 'package:intallek/features/auth/verification/views/verification_page.dart';
import 'package:intallek/features/client_app/complain/complain_page.dart';
import 'package:intallek/features/client_app/delivery/delivery_details/delivery_details_page.dart';
import 'package:intallek/features/client_app/delivery/main/delivery_page.dart';
import 'package:intallek/features/client_app/delivery/select_location/select_location_delivery_page.dart';
import 'package:intallek/features/client_app/navigation_bar/app_navigation_bar.dart';
import 'package:intallek/features/client_app/ride/cubit/sheet_cubit.dart';
import 'package:intallek/features/client_app/ride/views/ride_page.dart';
import 'package:intallek/features/onboarding/views/onboarding_screen.dart';
import 'package:intallek/features/policy_privacy/policy_privacy_page.dart';
import 'package:intallek/features/splash/views/splash_screen.dart';
import 'package:intallek/presentation/app/controllers/location_cubit/location_cubit.dart';

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
        builder: (context, state) {
          context.read<LocationCubit>().getCurrentLocation();

          return BlocProvider<SheetCubit>(
            create: (context) => SheetCubit(),
            child: const RidePage(),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.deliveryPage,
        name: AppRoutes.deliveryPage,
        builder: (context, state) {
          context.read<LocationCubit>().getCurrentLocation();
          return const DeliveryPage();
        },
      ),

      GoRoute(
        path: AppRoutes.selectLocationDeliveryPage,
        name: AppRoutes.selectLocationDeliveryPage,
        builder: (context, state) => const SelectLocationDeliveryPage(),
      ),
      GoRoute(
        path: AppRoutes.deliveryDetailsPage,
        name: AppRoutes.deliveryDetailsPage,
        builder: (context, state) => const DeliveryDetailsPage(),
      ),
      GoRoute(
        path: AppRoutes.complainPage,
        name: AppRoutes.complainPage,
        builder: (context, state) => const ComplainPage(),
      ),
      GoRoute(
        path: AppRoutes.policyPrivacyPage,
        name: AppRoutes.policyPrivacyPage,
        builder: (context, state) => const PolicyPrivacyPage(),
      ),
    ],
  );
}
