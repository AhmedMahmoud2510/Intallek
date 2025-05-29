import 'package:flutter/services.dart';

Future<void> initSplashScreen() async {
  // Set UI to immersive mode
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // Wait for 3 seconds
  await Future.delayed(const Duration(seconds: 3));

  // Navigate to authentication check screen
  // await Navigator.pushReplacement(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) {
  //       return const CheckAuthScreen();
  //     },
  //   ),
  // );
}
