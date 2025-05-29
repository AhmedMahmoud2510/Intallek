import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intallek/core/constants.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/themes.dart';
import 'package:intallek/core/theme/unfocus_scope.dart';
import 'package:intallek/features/splash/views/splash_screen.dart';

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
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for (final locale in supportedLocales) {
            if (deviceLocale != null &&
                deviceLocale.languageCode == locale.languageCode) {
              return deviceLocale;
            }
          }
          return supportedLocales.first;
        },
        supportedLocales: S.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const SplashScreen(),
      ),
    );
  }
}
