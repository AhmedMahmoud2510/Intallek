import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/svg_image_widget.dart';

PopupMenuButton<String> homePopupMenuButton(BuildContext context) {
  return PopupMenuButton<String>(
    icon: const SvgImage(imagePath: Assets.imagesIconsMenu),
    iconColor: AppColors.forthColor,
    constraints: BoxConstraints(minWidth: 140.w),
    color: AppColors.scaffoldBackgroundLight,
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: AppColors.scaffoldBackgroundLight),
      borderRadius: BorderRadius.circular(4.r),
    ),
    onSelected: (value) {
      if (value == 'profile') {
      } else if (value == 'complain') {
      } else if (value == 'privacy policy') {
      } else if (value == 'language') {
      } else if (value == 'help') {
      } else if (value == 'sign out') {}
    },
    itemBuilder: (BuildContext context) {
      return [
        PopupMenuItem(
          height: 40.h,
          value: 'profile',
          child: Row(
            spacing: 10.w,
            children: [
              const SvgImage(imagePath: Assets.imagesIconsProfile),
              Text(S.of(context)!.profile, style: AppStyle.black16W500Style),
            ],
          ),
        ),

        PopupMenuItem(
          height: 40.h,
          value: 'complain',
          child: Row(
            spacing: 10.w,
            children: [
              const SvgImage(imagePath: Assets.imagesIconsComplain),
              Text(S.of(context)!.complain, style: AppStyle.black16W500Style),
            ],
          ),
        ),

        PopupMenuItem(
          height: 40.h,
          value: 'privacy policy',
          child: Row(
            spacing: 10.w,
            children: [
              const SvgImage(imagePath: Assets.imagesIconsLock),
              Text(
                S.of(context)!.privacyPolicy,
                style: AppStyle.black16W500Style,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          height: 40.h,
          value: 'language',
          child: Row(
            spacing: 10.w,
            children: [
              const SvgImage(imagePath: Assets.imagesIconsLanguage),
              Text(S.of(context)!.language, style: AppStyle.black16W500Style),
            ],
          ),
        ),

        PopupMenuItem(
          height: 40.h,
          value: 'help',
          child: Row(
            spacing: 10.w,
            children: [
              const SvgImage(imagePath: Assets.imagesIconsHelp),
              Text(S.of(context)!.help, style: AppStyle.black16W500Style),
            ],
          ),
        ),

        PopupMenuItem(
          height: 40.h,
          value: 'sign out',
          child: Row(
            spacing: 10.w,
            children: [
              const SvgImage(imagePath: Assets.imagesIconsSignOut),
              Text(S.of(context)!.signOut, style: AppStyle.black16W500Style),
            ],
          ),
        ),
      ];
    },
  );
}
