import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';

class CustomPrimaryTextfield extends StatelessWidget {
  const CustomPrimaryTextfield({
    this.controller,
    this.focusNode,
    super.key,
    this.isPassword,
    this.suffix,
    this.validator,
    this.textInputAction,
    this.autofillHints,
    this.prefix,
    this.textAlign,
    this.text,
    this.style,
    this.readOnly,
    this.onTap,
  });
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? isPassword;
  final Widget? suffix;
  final Widget? prefix;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final TextAlign? textAlign;
  final String? text;
  final TextStyle? style;
  final bool? readOnly;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isFocused = focusNode?.hasFocus;
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly ?? false,
      style: AppStyle.gray14W400Style,
      textAlign: textAlign ?? TextAlign.center,
      validator: validator,
      focusNode: focusNode,
      controller: controller,
      cursorColor: AppColors.greyColor,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        hint: Text(text ?? '', style: style ?? AppStyle.black20W700Style),
        border: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
        enabledBorder: customOutlineInputBorder(),
        suffixIcon: suffix,
        prefixIcon: prefix,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        filled: true,
        fillColor: (isFocused ?? false)
            ? AppColors.greyColor.withAlpha(25)
            : AppColors.greyColor.withAlpha(200),
      ),

      textInputAction: textInputAction,
      autofillHints: autofillHints,
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
