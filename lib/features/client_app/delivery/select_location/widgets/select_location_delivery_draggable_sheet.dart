import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/app_routes.dart';
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
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
          Text(
            S.of(context)!.findYourDelivery,
            style: AppStyle.black18W700Style.copyWith(
              fontWeight: FontWeight.w600,
              height: 1.h,
            ),
          ),
          20.verticalSpace,
          Row(
            spacing: 8.w,
            children: [
              Expanded(
                child: CustomPrimaryBotton(
                  text: S.of(context)!.sender,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: CustomPrimaryBotton(
                  text: S.of(context)!.recipient,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          16.verticalSpace,
          Row(
            spacing: 6.w,
            children: [
              Icon(Icons.circle, color: AppColors.forthColor, size: 12.h),
              Text('Ahmed Mahmoud', style: AppStyle.black16W500Style),
            ],
          ),
          8.verticalSpace,

          CustomPrimaryTextfield(
            text: S.of(context)!.startLocation,
            style: AppStyle.gray14W400Style,
          ),
          12.verticalSpace,
          Row(
            spacing: 6.w,
            children: [
              Icon(Icons.circle, color: AppColors.primaryColor, size: 12.h),
              Text('Abdelhamed Mohamed', style: AppStyle.black16W500Style),
            ],
          ),
          8.verticalSpace,
          CustomPrimaryTextfield(
            text: S.of(context)!.startLocation,
            style: AppStyle.gray14W400Style,
          ),

          16.verticalSpace,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context)!.deliveryPrice,
                style: AppStyle.black16W700Style,
              ),
              Text(
                '60 ${S.of(context)!.sar}',
                style: AppStyle.black16W400Style,
              ),
            ],
          ),
          16.verticalSpace,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context)!.numberOfItems,
                style: AppStyle.black16W700Style,
              ),
              Text(
                '2 ${S.of(context)!.items}',
                style: AppStyle.black16W400Style,
              ),
            ],
          ),
          16.verticalSpace,
          Text(
            S.of(context)!.paymentMethod,
            style: AppStyle.black16W700Style.copyWith(
              decoration: TextDecoration.underline,
              height: 1.6.h,
            ),
          ),
          8.verticalSpace,

          Row(
            spacing: 4.w,
            children: [
              Icon(Icons.check_box, size: 16.h),
              Text(S.of(context)!.visa, style: AppStyle.black16W500Style),
            ],
          ),
          20.verticalSpace,
          CustomPrimaryBotton(
            text: S.of(context)!.findDelivery,
            onPressed: () =>
                GoRouter.of(context).pushNamed(AppRoutes.deliveryDetailsPage),
          ),
        ],
      ),
    );
  }
}
