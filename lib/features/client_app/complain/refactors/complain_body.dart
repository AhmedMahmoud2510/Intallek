import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class ComplainsBody extends StatelessWidget {
  const ComplainsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.offWhiteColor, width: 1.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context)!.reportSafetyIssue,
                style: AppStyle.black16W700Style,
              ),
              Text(
                S.of(context)!.haveSafetyRelatedIssue,
                style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.offWhiteColor, width: 1.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context)!.reportMoneyIssue,
                style: AppStyle.black16W700Style,
              ),
              Text(
                S.of(context)!.haveMoneyIssue,
                style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.offWhiteColor, width: 1.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context)!.provideDriverFeedback,
                style: AppStyle.black16W700Style,
              ),
              Text(
                S.of(context)!.forDriverArentSafety,
                style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.offWhiteColor, width: 1.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context)!.provideCarFeedback,
                style: AppStyle.black16W700Style,
              ),
              Text(
                S.of(context)!.forCarIssue,
                style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
