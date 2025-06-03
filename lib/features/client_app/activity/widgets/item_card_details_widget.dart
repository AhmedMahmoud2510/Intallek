import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/features/client_app/activity/models/activity_card_model.dart';

class ItemCardDetailsWidget extends StatelessWidget {
  const ItemCardDetailsWidget({required this.card, super.key});
  final ActivityCardModel card;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: [
          Text(card.orderDate, style: AppStyle.black16W700Style),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 8.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 10.w,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10.h,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        card.fromPlace,
                        style: AppStyle.gray14W400Style.copyWith(
                          color: AppColors.forthColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.w,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10.h,
                        color: AppColors.forthColor,
                      ),
                      Text(
                        card.toPlace,
                        style: AppStyle.gray14W400Style.copyWith(
                          color: AppColors.forthColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                spacing: 8.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 8.w,
                    children: [
                      Text(card.price, style: AppStyle.black16W400Style),
                      Text(
                        S.of(context)!.sar,
                        style: AppStyle.black16W400Style,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8.w,
                    children: [
                      const Icon(Icons.timer_outlined),
                      Text(card.time, style: AppStyle.black16W400Style),
                      Text(
                        S.of(context)!.min,
                        style: AppStyle.black16W400Style,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
