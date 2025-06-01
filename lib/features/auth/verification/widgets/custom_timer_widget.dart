import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';

class CustomTimerWidget extends StatefulWidget {
  const CustomTimerWidget({super.key});

  @override
  State<CustomTimerWidget> createState() => _CustomTimerWidgetState();
}

class _CustomTimerWidgetState extends State<CustomTimerWidget> {
  Timer? timer;
  int timeLeft = 30;
  bool isButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timeLeft = 30;
    isButtonDisabled = true;

    timer?.cancel(); // ألغِ أي مؤقت سابق
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          isButtonDisabled = false;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel(); // لا تستخدم if (!mounted)
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '00:${timeLeft.toString().padLeft(2, '0')}',
          style: AppStyle.thinTextStyle.copyWith(color: AppColors.primaryColor),
        ),
        InkWell(
          onTap: isButtonDisabled
              ? null
              : () async {
                  if (!mounted) return;
                  startTimer();
                  setState(() {
                    isButtonDisabled = true;
                  });

                  /// send code
                },
          child: Text(
            S.of(context)!.weSendVerificationCTo,
            textAlign: TextAlign.center,
            style: AppStyle.thinTextStyle,
          ),
        ),
        Row(
          spacing: 6.w,
          children: [
            Text(
              'xxxxxxxxxx321',
              style: AppStyle.thinTextStyle.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            Text(
              S.of(context)!.youCanCheckYourMessages,
              style: AppStyle.thinTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
