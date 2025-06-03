import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/fonts.dart';
import 'package:intallek/core/theme/text_styles.dart';

class OnboaredText extends StatelessWidget {
  const OnboaredText({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          textAlign: TextAlign.justify,
          index == 0
              ? S.of(context)!.onboarding1
              : index == 1
              ? S.of(context)!.onboarding2
              : S.of(context)!.onboarding3,
          style: AppStyle.headBoldTextStyle.copyWith(height: 1.h,
          fontFamily: AppFonts.kArabicFont),
        ),
      ),
    );
  }
}
