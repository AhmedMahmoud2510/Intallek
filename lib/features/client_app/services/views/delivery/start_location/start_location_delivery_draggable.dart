import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/core/widgets/custom_primary_textfield.dart';
import 'package:intallek/core/widgets/svg_image_widget.dart';
import 'package:intallek/features/client_app/services/cubit/sheet_cubit.dart';

class StartLocationDeliveryDraggable extends StatelessWidget {
  const StartLocationDeliveryDraggable({super.key, this.controller});

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.all(AppValues.radius),
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
        20.verticalSpace,
        CustomPrimaryTextfield(
          onTap: () {
            context.read<SheetCubit>().changeSheet(1);
          },
          readOnly: true,
          prefix: Padding(
            padding: EdgeInsets.all(8.h),
            child: SvgImage(imagePath: Assets.imagesIconsSearch, height: 16.h),
          ),
          text: S.of(context)!.whereTo,
        ),
        20.verticalSpace,
        Row(
          spacing: 8.w,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgImage(imagePath: Assets.imagesIconsHomeOutline, height: 18.h),
            Text(
              S.of(context)!.home,
              style: AppStyle.black14W500Style.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.h,
              ),
            ),
            const Spacer(),
            SvgImage(imagePath: Assets.imagesIconsSavedPlace, height: 20.h),
            Text(
              S.of(context)!.savedPlaces,
              style: AppStyle.black14W500Style.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.h,
              ),
            ),
          ],
        ),
        24.verticalSpace,
        Row(
          spacing: 8.w,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgImage(imagePath: Assets.imagesIconsClock, height: 22.h),
            Text(
              'Saudi German Hospital - Jeddah',
              style: AppStyle.black16W400Style,
            ),
          ],
        ),
        14.verticalSpace,
        Row(
          spacing: 8.w,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgImage(imagePath: Assets.imagesIconsClock, height: 22.h),
            Text(
              'Saudi German Hospital - Jeddah',
              style: AppStyle.black16W400Style,
            ),
          ],
        ),
      ],
    );
  }
}
