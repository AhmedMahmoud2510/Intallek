import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';

class LoginTextfeild extends StatelessWidget {
  const LoginTextfeild({
    required this.controller,
    required this.focusNode,
    super.key,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    final isFocused = focusNode.hasFocus;
    return TextFormField(
      textAlign: TextAlign.center,
      focusNode: focusNode,
      controller: controller,
      cursorColor: AppColors.greyColor,
      decoration: InputDecoration(
        border: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
        enabledBorder: customOutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
        filled: true,
        fillColor: isFocused ? AppColors.lightGreyColor : AppColors.greyColor,
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        width: 0.50,
        strokeAlign: BorderSide.strokeAlignOutside,
        color: AppColors.lightGreyColor,
      ),
    );
  }
}
