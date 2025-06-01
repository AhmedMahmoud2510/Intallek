import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class AuthHeadWidget extends StatelessWidget {
  const AuthHeadWidget({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 151.w,
      height: 24.h,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: robotoExtraBold.copyWith(
          color: AppColors.forthColor,
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
