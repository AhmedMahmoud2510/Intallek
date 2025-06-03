import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';

class DeliveryDialog extends StatelessWidget {
  const DeliveryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,

      child: Column(
        spacing: 16.h,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset(Assets.imagesPngDeliveryBox),
          SizedBox(
            width: 300.w,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: S.of(context)!.packageNotMore,
                    style: AppStyle.headBoldTextStyle,
                  ),
                  TextSpan(
                    text: ' ${S.of(context)!.kilo5}',
                    style: AppStyle.headBoldTextStyle.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          16.verticalSpace,
          CustomPrimaryBotton(
            text: S.of(context)!.request,
            onPressed: () {
              GoRouter.of(context).pop();
              GoRouter.of(context).pushNamed(AppRoutes.deliveryPage);
            },
          ),
        ],
      ),
    );
  }
}
