import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/features/client_app/home/widgets/delivery_button_widget.dart';
import 'package:intallek/features/client_app/home/widgets/offer_home_widget.dart';
import 'package:intallek/features/client_app/home/widgets/ride_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,

            /// User Name
            Text(
              '${S.of(context)!.hey} Ahmed,',
              style: AppStyle.headBoldTextStyle,
            ),
            60.verticalSpace,

            Text(
              S.of(context)!.service,
              style: AppStyle.black20W700Style.copyWith(
                decoration: TextDecoration.underline,
                height: 1.58.h,
              ),
            ),
            20.verticalSpace,
            Row(
              spacing: 18.w,
              children: const [
                Flexible(child: RideButtonWidget()),
                Flexible(child: DeliveryButtonWidget()),
              ],
            ),
            60.verticalSpace,
            const OfferHomeWidget(),
          ],
        ),
      ),
    );
  }
}
