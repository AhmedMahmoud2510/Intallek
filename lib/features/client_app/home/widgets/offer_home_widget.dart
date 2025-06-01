
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/values.dart';

class OfferHomeWidget extends StatelessWidget {
  const OfferHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppValues.radius),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: SizedBox(
              width: 190.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context)!.yourFirstRideOn,
                    style: TextStyle(
                      color: AppColors.offWhiteColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    S.of(context)!.offer,
                    style: TextStyle(
                      color: AppColors.offWhiteColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Image.asset(Assets.imagesPngOffer, height: 100.h),
          ),
        ],
      ),
    );
  }
}