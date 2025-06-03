import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 60.h),
      child: GestureDetector(
        onTap: () =>
            GoRouter.of(context).pushReplacementNamed(AppRoutes.loginScreen),
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            S.of(context)!.skip,
            style: AppStyle.gray14W400Style.copyWith(
              color: AppColors.forthColor,
            ),
          ),
        ),
      ),
    );
  }
}
