import 'package:flutter/material.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/fonts.dart';
import 'package:intallek/core/theme/text_styles.dart';

class Appthemes {
  static ThemeData lightTheme({required String langCode}) {
    final isArabic = langCode == 'ar';
    final fontFamily = isArabic ? AppFonts.kArabicFont : AppFonts.kPrimaryFont;
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundLight,
      fontFamily: fontFamily,

      textTheme: TextTheme(
        titleLarge: AppStyle.headBoldTextStyle,
        titleMedium: AppStyle.black16W500Style,
      ),
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
    );
  }
}
