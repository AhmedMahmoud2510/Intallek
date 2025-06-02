import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/values.dart';

void showCustomPrimaryDialog(BuildContext context, {required Widget widget}) {
  showDialog<void>(
    context: context,
    useRootNavigator: false,
    // barrierDismissible: false, // يمنع إغلاقه بالضغط خارج
    builder: (context) {
      return PopScope(
        // canPop: false,
        child: Dialog(
          backgroundColor: AppColors.scaffoldBackgroundLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppValues.radius),
          ),
          child: Padding(padding: EdgeInsets.all(16.h), child: widget),
        ),
      );
    },
  );
}
