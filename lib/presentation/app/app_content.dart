import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/router_generation_config.dart';
import 'package:intallek/core/theme/themes.dart';
import 'package:intallek/core/theme/unfocus_scope.dart';
import 'package:intallek/presentation/app/controllers/locale_cubit/locale_cubit.dart';
import 'package:intallek/presentation/app/controllers/location_cubit/location_cubit.dart';

/// A widget that handles the app's content and state management.
class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unfocusScope(context),
      child: BlocProvider<LocationCubit>(
          create: (context) => LocationCubit(),
          child: BlocBuilder<LocaleCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp.router(
              routerConfig: RouterGenerationConfig.goRouter,
              debugShowCheckedModeBanner: false,
              theme: Appthemes.lightTheme(langCode: locale.languageCode),
              title: 'انطلق',
              locale: locale,

              supportedLocales: S.supportedLocales,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            );
          },
        ),
      ),
    );
  }
}
