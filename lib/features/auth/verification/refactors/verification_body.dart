import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/features/auth/login/widgets/auth_head_widget.dart';
import 'package:intallek/features/auth/verification/widgets/custom_timer_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationBody extends StatefulWidget {
  const VerificationBody({super.key});

  @override
  State<VerificationBody> createState() => _VerificationBodyState();
}

class _VerificationBodyState extends State<VerificationBody> {
  final _verificationCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            110.verticalSpace,
            AuthHeadWidget(text: S.of(context)!.enterYourVerificationCode),
            50.verticalSpace,
            PinCodeTextField(
              appContext: context,
              length: 4,
              controller: _verificationCodeController,
              pinTheme: PinTheme(
                borderRadius: BorderRadius.circular(14.r),
                shape: PinCodeFieldShape.box,
                fieldHeight: 54.h,
                fieldWidth: 74.w,
                activeBorderWidth: 2,
                inactiveBorderWidth: 1,
                activeColor: AppColors.primaryColor,
                inactiveColor: AppColors.thirdColor,
                selectedColor: AppColors.primaryColor,
              ),
            ),

            50.verticalSpace,
            Text(
              S.of(context)!.weSendVerificationCTo,
              textAlign: TextAlign.center,
              style: AppStyle.black16W400Style,
            ),

            Row(
              spacing: 6.w,
              children: [
                Text(
                  'xxxxxxxxxx321',
                  style: AppStyle.black16W400Style.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  S.of(context)!.youCanCheckYourMessages,
                  style: AppStyle.black16W400Style,
                ),
              ],
            ),

            10.verticalSpace,
            CustomPrimaryBotton(
              text: S.of(context)!.verify,
              onPressed: () {
                GoRouter.of(
                  context,
                ).pushReplacementNamed(AppRoutes.appNavigationBar);
              },
            ),
            8.verticalSpace,
            Row(
              spacing: 6.w,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  S.of(context)!.didntReceivedCode,
                  textAlign: TextAlign.center,
                  style: AppStyle.gray14W400Style.copyWith(
                    color: AppColors.darkGreyColor,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    S.of(context)!.sendAgain,
                    textAlign: TextAlign.center,
                    style: AppStyle.black16W500Style.copyWith(
                      color: AppColors.darkGreyColor,
                    ),
                  ),
                ),
                const CustomTimerWidget(),
              ],
            ),
            24.verticalSpace,
          ],
        ),
      ),
    );
  }
}
