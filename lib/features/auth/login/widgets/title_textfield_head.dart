import 'package:flutter/material.dart';
import 'package:intallek/core/theme/text_styles.dart';

class HeaderTitleTextfield extends StatelessWidget {
  const HeaderTitleTextfield({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(text, style: AppStyle.black16W500Style)]);
  }
}
