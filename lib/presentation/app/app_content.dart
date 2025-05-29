import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intallek/core/constants.dart';
import 'package:intallek/core/theme/themes.dart';
import 'package:intallek/core/theme/unfocus_scope.dart';

/// A widget that handles the app's content and state management.
class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unfocusScope(context),
      child: MaterialApp(
        navigatorKey: GlobalVariable.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        title: 'انطلق',
        locale: const Locale('en'), // هذا يحدد اللغة (والاتجاه rtl)
        supportedLocales: const [Locale('en')],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        // home: const SplashScreen(),
      ),
    );
  }
}
