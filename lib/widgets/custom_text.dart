import 'package:first/ui/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  TextStyle? style = AppTextStyle.normalStyle();

  CustomText({
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
