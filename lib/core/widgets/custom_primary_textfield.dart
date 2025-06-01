import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';

class CustomPrimaryTextfield extends StatelessWidget {
  const CustomPrimaryTextfield({
    required this.controller,
    required this.focusNode,
    super.key,
    this.isPassword,
    this.suffix,
    this.validator,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool? isPassword;
  final Widget? suffix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final isFocused = focusNode.hasFocus;
    return TextFormField(
      style: AppStyle.gray14W400Style,
      textAlign: TextAlign.center,
      validator: validator,
      focusNode: focusNode,
      controller: controller,
      cursorColor: AppColors.greyColor,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        border: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
        enabledBorder: customOutlineInputBorder(),
        suffixIcon: suffix,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
        filled: true,
        fillColor: isFocused
            ? AppColors.greyColor.withAlpha(25)
            : AppColors.greyColor.withAlpha(200),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.radius),
      borderSide: const BorderSide(
        width: 0.50,
        strokeAlign: BorderSide.strokeAlignOutside,
        color: AppColors.lightGreyColor,
      ),
    );
  }
}
