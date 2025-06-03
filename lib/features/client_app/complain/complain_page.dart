import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/features/client_app/complain/refactors/complain_body.dart';

class ComplainPage extends StatelessWidget {
  const ComplainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
        ),
        centerTitle: true,
        title: Text(S.of(context)!.complains, style: AppStyle.black20W700Style),
      ),
      body: const ComplainsBody(),
    );
  }
}
