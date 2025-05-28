
import 'package:deepaskitchen/widget/small_text.dart';
import 'package:flutter/material.dart';

import '../global/constant/colors.dart';

// ignore: must_be_immutable
class IconAndWidgetText extends StatelessWidget {
  final String text;
  final IconData icon;
  Color color;
  final Color iconColor;

  IconAndWidgetText(
      {super.key,
      required this.text,
      this.color = AppColors.textColor,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          color: color,
        ),
      ],
    );
  }
}
