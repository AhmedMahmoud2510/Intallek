import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class NextButton extends StatelessWidget {
  const NextButton({required this.onTap, required this.index, super.key});
  final VoidCallback? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          Size(MediaQuery.sizeOf(context).width - 20.w, 65),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        ),
      ),
      child: Text(
        index == 2 ? S.of(context)!.go : S.of(context)!.next,
        style: robotoExtraBold.copyWith(
          color: AppColors.forthColor,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
