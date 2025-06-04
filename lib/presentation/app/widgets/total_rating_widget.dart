import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_dialog.dart';
import 'package:intallek/presentation/app/models/total_rating_model.dart';

class TotalRatingWidget extends StatelessWidget {
  const TotalRatingWidget({required this.rate, super.key});
  final TotalRatingModel rate;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 8.r,
      onTap: () => showCustomPrimaryDialog(
        context,
        widget: SizedBox(
          height: 600.h,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                spacing: 10.h,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Text(
                          S.of(context)!.totalRating,
                          style: AppStyle.black20W700Style,
                        ),
                      ),
                      IconButton(
                        onPressed: () => GoRouter.of(context).pop(),
                        icon: Icon(
                          Icons.close_rounded,
                          color: AppColors.forthColor,
                          size: 16.h,
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  Row(
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          '5 ${S.of(context)!.stars}',
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                      SizedBox(
                        width: 150.w,
                        height: 15.h,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(8.r),
                          value: rate.stars5 / rate.totalStars,
                          backgroundColor: AppColors.lightGreyColor,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          rate.stars5.toString(),
                          textAlign: TextAlign.end,
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          '4 ${S.of(context)!.stars}',
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                      SizedBox(
                        width: 150.w,
                        height: 15.h,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(8.r),
                          value: rate.stars4 / rate.totalStars,
                          backgroundColor: AppColors.lightGreyColor,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          rate.stars4.toString(),
                          textAlign: TextAlign.end,
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          '3 ${S.of(context)!.stars}',
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                      SizedBox(
                        width: 150.w,
                        height: 15.h,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(8.r),
                          value: rate.stars3 / rate.totalStars,
                          backgroundColor: AppColors.lightGreyColor,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          rate.stars3.toString(),
                          textAlign: TextAlign.end,
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          '2 ${S.of(context)!.stars}',
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                      SizedBox(
                        width: 150.w,
                        height: 15.h,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(8.r),
                          value: rate.stars2 / rate.totalStars,
                          backgroundColor: AppColors.lightGreyColor,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          rate.stars2.toString(),
                          textAlign: TextAlign.end,
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          '1 ${S.of(context)!.star}',
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                      SizedBox(
                        width: 150.w,
                        height: 15.h,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(8.r),
                          value: rate.stars1 / rate.totalStars,
                          backgroundColor: AppColors.lightGreyColor,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          rate.stars1.toString(),
                          textAlign: TextAlign.end,
                          style: AppStyle.black16W400Style,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              24.verticalSpace,

              ///
              Text(
                S.of(context)!.noRecentRideFeedback,
                style: AppStyle.gray14W400Style,
              ),
            ],
          ),
        ),
      ),
      child: Row(
        spacing: 8.w,
        children: [
          Image.asset(Assets.imagesPngStar, height: 22.h),
          Text(
            rate.averageStars.toStringAsFixed(1),
            style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}
