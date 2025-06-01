import 'package:flutter/material.dart';
import 'package:intallek/features/auth/verification/widgets/verification_body.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: const VerificationBody(),
    );
  }
}
