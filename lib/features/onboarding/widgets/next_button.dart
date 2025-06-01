import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';

class NextButton extends StatelessWidget {
  const NextButton({required this.onTap, required this.index, super.key});
  final VoidCallback? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomPrimaryBotton(
      onPressed: onTap,
      radius: 12.sp,
      text: index == 2 ? S.of(context)!.go : S.of(context)!.next,
    );
  }
}
