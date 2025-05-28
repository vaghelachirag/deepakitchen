
import 'package:flutter/material.dart';

import '../global/constant/colors.dart';
import 'dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color? color;
  final String? text;
  double size;
  TextOverflow overflow;

  BigText(
      {super.key,
      this.color = AppColors.mainBlackColor,
      this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size == 0 ? Dimensions.font20 : size),
    );
  }
}
