import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/router/app_routes.dart';

Future<void> initSplashScreen(BuildContext context) async {
  // Set UI to immersive mode
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // Wait for 3 seconds
  await Future.delayed(const Duration(seconds: 3));

  // Navigate to authentication check screen
  await GoRouter.of(context).pushNamed(AppRoutes.onbordingScreen);
}
