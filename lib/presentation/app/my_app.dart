import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/presentation/app/app_content.dart';

/// The root widget of the application that sets up the app's basic structure,
/// including theme, localization, and state management.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
      child: const AppContent()
    );
  }
}
