import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/values.dart';

class CustomPrimaryBotton extends StatelessWidget {
  const CustomPrimaryBotton({
    super.key,
    this.onPressed,
    this.text,
    this.color,
    this.radius,
    this.height,
    this.width,
    this.fontColor,
    this.fontSize,
  });
  final void Function()? onPressed;
  final String? text;
  final Color? color;
  final double? radius;
  final double? height;
  final double? width;
  final Color? fontColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: color ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? AppValues.radius),
        ),
        fixedSize: Size(
          width ?? MediaQuery.sizeOf(context).width, // - 20.w,
          height ?? AppValues.buttonHeight,
        ),
      ),
      child: Text(
        text ?? '',
        style: TextStyle(
          fontSize: fontSize ?? 16.sp,
          fontWeight: FontWeight.w700,
          height: 1.h,
          color: fontColor ?? Colors.black,
        ),
      ),
    );
  }
}
