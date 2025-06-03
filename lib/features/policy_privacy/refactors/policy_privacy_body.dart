import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';

class PolicyPrivacyBody extends StatelessWidget {
  const PolicyPrivacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppValues.horizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            16.verticalSpace,

            Text(
              S.of(context)!.appPrivacyPolicy,
              style: AppStyle.black16W700Style,
            ),
            Text(
              '${S.of(context)!.lastUpdated} 01-2025',
              style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
            ),
            16.verticalSpace,
            Text(
              S.of(context)!.introduction,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.introductionText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),
            8.verticalSpace,
            Divider(color: AppColors.lightGreyColor, thickness: 1.w),
            8.verticalSpace,
            Text(
              S.of(context)!.informationCollection,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.informationCollectionText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),
            8.verticalSpace,
            Text(
              S.of(context)!.personalInformation,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.personalInformationText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),

            8.verticalSpace,
            Text(
              S.of(context)!.usageTechnicalData,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.usageTechnicalDataText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),
            8.verticalSpace,

            Text(
              S.of(context)!.paymentInfo,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.paymentInfoText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),

            8.verticalSpace,
            Divider(color: AppColors.lightGreyColor, thickness: 1.w),
            8.verticalSpace,
            Text(
              S.of(context)!.howWeUseYourInfo,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.howWeUseYourInfoText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),

            8.verticalSpace,
            Divider(color: AppColors.lightGreyColor, thickness: 1.w),
            8.verticalSpace,
            Text(
              S.of(context)!.informationSharing,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.informationSharingText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),

            8.verticalSpace,
            Divider(color: AppColors.lightGreyColor, thickness: 1.w),
            8.verticalSpace,
            Text(
              S.of(context)!.dataSecurity,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.dataSecurityText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),

            8.verticalSpace,
            Divider(color: AppColors.lightGreyColor, thickness: 1.w),
            8.verticalSpace,
            Text(
              S.of(context)!.questions,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
            10.verticalSpace,
            Text(
              S.of(context)!.questionsText,
              style: AppStyle.gray14W400Style.copyWith(
                color: AppColors.forthColor,
              ),
            ),
            Text(
              S.of(context)!.emailAddress,
              style: AppStyle.black16W700Style.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            24.verticalSpace,
          ],
        ),
      ),
    );
  }
}
