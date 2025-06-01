import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/text_styles.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.verticalSpace,
            Text(
              S.of(context)!.service,
              style: AppStyle.black20W700Style.copyWith(
                decoration: TextDecoration.underline,
                height: 1.58.h,
              ),
            ),
            40.verticalSpace,
          ],
        ),
      ),
    );
  }
}
