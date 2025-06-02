import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/core/widgets/svg_image_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        spacing: 12.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const SvgImage(imagePath: Assets.imagesSvgEdit),
              ),
              Text(S.of(context)!.edit, style: AppStyle.black16W700Style),
              12.horizontalSpace,
            ],
          ),
          Row(
            children: [
              Image.asset(
                Assets.imagesPngUnknownPerson,
                height: 74.h,
                width: 74.w,
              ),
              16.horizontalSpace,
              Column(
                children: [
                  Text('Ahmed Mahmoud', style: AppStyle.headBoldTextStyle),
                  Row(
                    spacing: 10.w,
                    children: [
                      Image.asset(Assets.imagesPngStar, height: 22.h),
                      Text(
                        '4.6',
                        style: AppStyle.gray14W400Style.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          20.verticalSpace, //50
          CustomPrimaryBotton(text: S.of(context)!.activity, onPressed: () {}),
          20.verticalSpace,
          Text(S.of(context)!.firstName, style: AppStyle.black16W700Style),
          Text('Ahmed', style: AppStyle.gray14W400Style),
          Text(S.of(context)!.lastName, style: AppStyle.black16W700Style),
          Text('Mahmoud', style: AppStyle.gray14W400Style),
          Text(S.of(context)!.phoneNumber, style: AppStyle.black16W700Style),
          Text('05051612412', style: AppStyle.gray14W400Style),
          20.verticalSpace,
          Row(
            spacing: 12.w,
            children: [
              const Icon(Icons.delete_outlined),
              Text(
                S.of(context)!.deleteAccount,
                style: AppStyle.black16W700Style,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
