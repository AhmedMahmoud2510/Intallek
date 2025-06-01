import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/login/refactors/login_body.dart';
import 'package:intallek/features/login/widgets/auth_head_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        title: const AuthHeadWidget(text: 'welcome back'),
        automaticallyImplyLeading: false,
      ),
      body: const LoginBody(),
    );
  }
}
