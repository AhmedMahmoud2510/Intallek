import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/core/widgets/custom_primary_textfield.dart';
import 'package:intallek/features/auth/login/widgets/title_textfield_head.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final _name = TextEditingController();
  final _phoneNo = TextEditingController();
  final _password = TextEditingController();
  final _reTypePassword = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneNoFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _reTypePasswordFocusNode = FocusNode();
  @override
  void initState() {
    _nameFocusNode.addListener(() {
      setState(() {});
    });
    _phoneNoFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
    _reTypePasswordFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _password.dispose();
    _phoneNo.dispose();
    _reTypePassword.dispose();
    _nameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _phoneNoFocusNode.dispose();
    _reTypePasswordFocusNode.dispose();
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
                HeaderTitleTextfield(text: S.of(context)!.name),
                10.verticalSpace,
                CustomPrimaryTextfield(
                  controller: _name,
                  focusNode: _nameFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${S.of(context)!.name} ${S.of(context)!.missing}';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.name],
                ),
                20.verticalSpace,
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
                    } else if (_reTypePassword.text != _password.text) {
                      return S.of(context)!.passwordDoesntMatch;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
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
                20.verticalSpace,
                HeaderTitleTextfield(text: S.of(context)!.reTypePassword),
                10.verticalSpace,
                CustomPrimaryTextfield(
                  controller: _reTypePassword,
                  focusNode: _reTypePasswordFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${S.of(context)!.reTypePassword} ${S.of(context)!.missing}';
                    } else if (_reTypePassword.text != _password.text) {
                      return S.of(context)!.passwordDoesntMatch;
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
                  text: S.of(context)!.signUp,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pop();
                    }
                  },
                ),
                8.verticalSpace,
                Row(
                  spacing: 8.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context)!.haveAnAccount,
                      textAlign: TextAlign.center,
                      style: AppStyle.black16W400Style,
                    ),
                    InkWell(
                      onTap: () => GoRouter.of(context).pop(),
                      child: Text(
                        S.of(context)!.signIn,
                        textAlign: TextAlign.center,
                        style: AppStyle.black16W700Style,
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
