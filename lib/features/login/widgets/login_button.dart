import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({required this.text, super.key, this.onTap});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          Size(MediaQuery.sizeOf(context).width - 20.w, 65),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        ),
      ),
      child: Text(
        text,
        style: robotoExtraBold.copyWith(
          color: AppColors.forthColor,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
