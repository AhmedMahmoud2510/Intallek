import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/core/widgets/svg_image_widget.dart';

class RideButtonWidget extends StatelessWidget {
  const RideButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).pushNamed(AppRoutes.ridePage),
      child: Column(
        children: [
          Container(
            height: 147.h,
            decoration: BoxDecoration(
              color: AppColors.thirdColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(AppValues.radius),
              ),
            ),
            alignment: Alignment.center,
            child: SvgImage(imagePath: Assets.imagesSvgCar, height: 74.h),
          ),
          Container(
            height: 54.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(AppValues.radius),
              ),
            ),
            child: Text(S.of(context)!.ride, style: AppStyle.black16W700Style),
          ),
        ],
      ),
    );
  }
}
