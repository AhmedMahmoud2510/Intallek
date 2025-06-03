import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/features/client_app/activity/models/activity_card_model.dart';
import 'package:intallek/features/client_app/activity/widgets/item_card_details_widget.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      ActivityCardModel(
        orderDate: 'Today',
        fromPlace: 'Jaddah',
        toPlace: 'Madinah',
        price: '90',
        time: '40 min',
      ),
      ActivityCardModel(
        orderDate: 'Today',
        fromPlace: 'Jaddah',
        toPlace: 'Madinah',
        price: '100',
        time: '40 min',
      ),
      ActivityCardModel(
        orderDate: 'Today',
        fromPlace: 'Jaddah',
        toPlace: 'makkah',
        price: '200',
        time: '50 min',
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                S.of(context)!.upcoming,
                style: AppStyle.black20W700Style.copyWith(
                  decoration: TextDecoration.underline,
                  height: 1.6.h,
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 4.h),
                height: 112.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppValues.radius),
                  border: Border.all(
                    width: 0.5.w,
                    color: AppColors.outlineColor,
                  ),
                ),
                child: ItemCardDetailsWidget(card: cards[index]),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Text(
              S.of(context)!.past,
              style: AppStyle.black20W700Style.copyWith(
                decoration: TextDecoration.underline,
                height: 1.58.h,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: cards.length,
            // separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 4.h),
                height: 112.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppValues.radius),
                  border: Border.all(
                    width: 0.5.w,
                    color: AppColors.outlineColor,
                  ),
                ),
                child: ItemCardDetailsWidget(card: cards[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
