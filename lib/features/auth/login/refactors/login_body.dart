import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/core/widgets/custom_primary_textfield.dart';
import 'package:intallek/features/auth/login/widgets/title_textfield_head.dart';

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

  bool isPassword = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                40.verticalSpace,
                HeaderTitleTextfield(text: S.of(context)!.phoneNumber),
                10.verticalSpace,
                CustomPrimaryTextfield(
                  controller: _phoneNo,
                  focusNode: _phoneNoFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${S.of(context)!.phoneNumber} ${S.of(context)!.missing}';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.telephoneNumber],
                ),
                20.verticalSpace,
                HeaderTitleTextfield(text: S.of(context)!.password),
                10.verticalSpace,
                CustomPrimaryTextfield(
                  controller: _password,
                  focusNode: _passwordFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${S.of(context)!.password} ${S.of(context)!.missing}';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  autofillHints: const [AutofillHints.password],
                  isPassword: isPassword,
                  suffix: IconButton(
                    onPressed: () => setState(() {
                      isPassword = !isPassword;
                    }),
                    icon: isPassword
                        ? const Icon(
                            Icons.visibility,
                            color: AppColors.secondaryColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: AppColors.secondaryColor,
                          ),
                  ),
                ),
                86.verticalSpace,
                CustomPrimaryBotton(
                  text: S.of(context)!.signIn,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      /// TODO
                      GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.verificationPage);
                    }
                  },
                ),
                8.verticalSpace,
                Row(
                  spacing: 8.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context)!.noAccountYet,
                      textAlign: TextAlign.center,
                      style: AppStyle.black16W400Style,
                    ),
                    InkWell(
                      onTap: () => GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.registerScreen),
                      child: Text(
                        S.of(context)!.signUp,
                        textAlign: TextAlign.center,
                        style: AppStyle.black16W700Style,
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
                40.verticalSpace,
                TextButton(onPressed: () {
                    GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.verificationPage);
                }, child: const Text('.')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
