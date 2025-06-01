import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/features/auth/login/widgets/auth_head_widget.dart';
import 'package:intallek/features/auth/register/refactor/register_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130.h,
        title: AuthHeadWidget(text: S.of(context)!.createYourAccount),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldBackgroundLight,
        centerTitle: true,
      ),
      body: const RegisterBody(),
    );
  }
}
