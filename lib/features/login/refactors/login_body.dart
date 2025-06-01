import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/features/login/widgets/login_button.dart';
import 'package:intallek/features/login/widgets/login_textfeild.dart';
import 'package:intallek/features/login/widgets/title_textfield_head.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _phoneNo = TextEditingController();
  final _password = TextEditingController();
  final FocusNode _phoneNoFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  @override
  void initState() {
    _phoneNoFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _phoneNo.dispose();
    _password.dispose();
    _phoneNoFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              16.verticalSpace,
              TitleTextfieldHead(text: S.of(context)!.phoneNumber),
              10.verticalSpace,
              LoginTextfeild(
                controller: _phoneNo,
                focusNode: _phoneNoFocusNode,
              ),
              16.verticalSpace,
              TitleTextfieldHead(text: S.of(context)!.password),
              10.verticalSpace,
              LoginTextfeild(
                controller: _password,
                focusNode: _passwordFocusNode,
              ),
              120.verticalSpace,
              LoginButton(text: S.of(context)!.signIn),
              10.verticalSpace,
              Row(
                spacing: 8.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context)!.noAccountYet,
                    textAlign: TextAlign.center,
                    style: robotoRegular.copyWith(
                      color: AppColors.forthColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    S.of(context)!.signUp,
                    textAlign: TextAlign.center,
                    style: robotoExtraBold.copyWith(
                      color: AppColors.forthColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
