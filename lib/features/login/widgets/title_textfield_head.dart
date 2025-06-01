import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class TitleTextfieldHead extends StatelessWidget {
  const TitleTextfieldHead({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: robotoBold.copyWith(
            color: AppColors.forthColor,
            fontSize: 18.sp,
          ),
        ),
       
      ],
    );
  }
}
