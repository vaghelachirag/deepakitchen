import 'package:flutter/material.dart';

import '../global/constant/colors.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color;
  final String? text;
  double size, height;
  int maxLines;

  SmallText({
    super.key,
    this.color = AppColors.textColor,
    this.text,
    this.size = 12,
    this.maxLines = 200,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        height: height,
        fontSize: size,
      ),
    );
  }
}
