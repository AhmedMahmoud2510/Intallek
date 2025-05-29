import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intallek/features/onboarding/views/onboarding_screen.dart';

Future<void> initSplashScreen(BuildContext context) async {
  // Set UI to immersive mode
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // Wait for 3 seconds
  await Future.delayed(const Duration(seconds: 3));

  // Navigate to authentication check screen
  await Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) {
        return const OnBoardingScreen();
      },
    ),
  );
}
