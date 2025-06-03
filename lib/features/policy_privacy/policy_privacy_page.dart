import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/features/policy_privacy/refactors/policy_privacy_body.dart';

class PolicyPrivacyPage extends StatelessWidget {
  const PolicyPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
        ), centerTitle: true,
        title: Text(S.of(context)!.privacyPolicy, style: AppStyle.black20W700Style),
      ),
      body: const PolicyPrivacyBody(),
    );
  }
}
