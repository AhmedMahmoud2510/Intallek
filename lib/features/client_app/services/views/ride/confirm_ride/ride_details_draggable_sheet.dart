import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/core/widgets/svg_image_widget.dart';
import 'package:intallek/presentation/app/models/total_rating_model.dart';
import 'package:intallek/presentation/app/widgets/total_rating_widget.dart';

class RideDetailsDraggableSheet extends StatelessWidget {
  const RideDetailsDraggableSheet({super.key, this.controller});
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    final rate = TotalRatingModel(
      stars1: 6,
      stars2: 0,
      stars3: 42,
      stars4: 20,
      stars5: 60,
      userName: 'Ahmed Mahmoud',
    );
    return ListView(
      padding: EdgeInsets.all(16.w),
      controller: controller,
      children: [
        Align(
          child: Container(
            width: 24.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.forthColor,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
        ),
        16.verticalSpace,

        /// Ride details
        Row(
          spacing: 8.w,
          children: [
            Text(
              S.of(context)!.rideDetails,
              style: AppStyle.black18W700Style.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.h,
              ),
            ),
            const Spacer(),
            CustomPrimaryBotton(
              text: S.of(context)!.complain,
              fontSize: 14.sp,
              onPressed: () {},
              height: 37.h,
              width: 85.w,
              radius: 10.r,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                fixedSize: Size(37.w, 20.h),
              ),
              child: const SvgImage(imagePath: Assets.imagesIconsPhoneOutgoing),
            ),
          ],
        ),
        16.verticalSpace,
        Row(
          children: [
            Image.asset(
              Assets.imagesPngUnknownPerson,
              height: 74.h,
              width: 74.w,
            ),
            16.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ahmed Mahmoud', style: AppStyle.headBoldTextStyle),
                Row(
                  spacing: 10.w,
                  children: [
                    const Icon(
                      Icons.phone_outlined,
                      color: AppColors.forthColor,
                    ),
                    Text(
                      '05023146523',
                      style: AppStyle.gray14W400Style.copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),

                TotalRatingWidget(rate: rate),
              ],
            ),
          ],
        ),

        12.verticalSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 6.w,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context)!.carDetails,
                  style: AppStyle.black16W700Style,
                ),
                Text('Red Hyundai El-antra', style: AppStyle.black16W400Style),
              ],
            ),
            Container(
              height: 35.h,
              width: 74.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: Text('د ج 815', style: AppStyle.black16W700Style),
            ),
          ],
        ),

        12.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 6.w,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context)!.pickUp, style: AppStyle.black16W700Style),
                Text('Jeddah Municipality', style: AppStyle.gray14W400Style),
              ],
            ),
            Row(
              spacing: 4.w,
              children: [
                const Icon(Icons.timer_sharp, color: AppColors.forthColor),
                Text(
                  '15 ${S.of(context)!.min}',
                  style: AppStyle.black16W400Style,
                ),
              ],
            ),
          ],
        ),

        ///
        12.verticalSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 6.w,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context)!.dropOff, style: AppStyle.black16W700Style),
                Text('Jeddah Municipality', style: AppStyle.gray14W400Style),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context)!.ridePrice,
                  style: AppStyle.black16W700Style,
                ),
                Text(
                  '60 ${S.of(context)!.sar}',
                  style: AppStyle.black16W400Style,
                ),
              ],
            ),
          ],
        ),

        ///
        40.verticalSpace,
        CustomPrimaryBotton(text: S.of(context)!.cancel, onPressed: () {}),
      ],
    );
  }
}
