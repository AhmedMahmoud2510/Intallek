
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/core/widgets/custom_primary_textfield.dart';

class SelectLocationDeliveryDraggableSheet extends StatelessWidget {
  const SelectLocationDeliveryDraggableSheet({super.key, this.controller});
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppValues.radius),
        ),
      ),
      child: ListView(
        controller: controller,
        padding: EdgeInsets.symmetric(vertical: 16.h),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              S.of(context)!.findYourRide,
              style: AppStyle.black18W700Style.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.h,
              ),
            ),
          ),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              spacing: 6.w,
              children: [
                Icon(Icons.circle, color: AppColors.forthColor, size: 12.h),
                Text(
                  S.of(context)!.startLocation,
                  style: AppStyle.black16W500Style,
                ),
              ],
            ),
          ),
          8.verticalSpace,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const CustomPrimaryTextfield(),
          ),
          12.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              spacing: 6.w,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: AppColors.forthColor,
                  size: 20.h,
                ),
                Text(
                  S.of(context)!.yourDestination,
                  style: AppStyle.black16W500Style,
                ),
              ],
            ),
          ),
          8.verticalSpace,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const CustomPrimaryTextfield(),
          ),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              S.of(context)!.availableOptions,
              style: AppStyle.black16W700Style.copyWith(
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
          ),
       
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              S.of(context)!.paymentMethod,
              style: AppStyle.black16W700Style.copyWith(
                decoration: TextDecoration.underline,
                height: 1.6.h,
              ),
            ),
          ),
          8.verticalSpace,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              spacing: 4.w,
              children: [
                Icon(Icons.check_box, size: 16.h),
                Text(S.of(context)!.visa, style: AppStyle.black16W500Style),
              ],
            ),
          ),
          20.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomPrimaryBotton(
              text: S.of(context)!.findDriver,
              // onPressed: () =>
              //     GoRouter.of(context).pushNamed(AppRoutes.rideDetailsPage),
            ),
          ),
        ],
      ),
    );
  }
}
