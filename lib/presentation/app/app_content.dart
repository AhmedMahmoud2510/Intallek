import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/router_generation_config.dart';
import 'package:intallek/core/theme/themes.dart';
import 'package:intallek/core/theme/unfocus_scope.dart';

/// A widget that handles the app's content and state management.
class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unfocusScope(context),
      child: MaterialApp.router(
        // navigatorKey: GlobalVariable.navigatorKey, // Removed because MaterialApp.router does not support navigatorKey
        routerConfig: RouterGenerationConfig.goRouter,
        debugShowCheckedModeBanner: false,
        theme: Appthemes.lightTheme,
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
        // home: const SplashScreen(),
      ),
    );
  }
}
