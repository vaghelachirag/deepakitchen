import 'package:flutter/material.dart';
import '../global/constant/colors.dart';
import '../global/constant/styles.dart';



/// This is common App button that will be used in all places where it should be match the app theme
class AppButton extends StatelessWidget {
  final double? verticlePadding;
  final double? horizontalPadding;
  final Color? btnBgColor, borderColor;
  final VoidCallback? onTap;
  final String? btnText;
  final TextStyle? buttonTextStyle;

  const AppButton(
      {super.key,
      this.verticlePadding,
      this.horizontalPadding,
      this.buttonTextStyle,
      this.borderColor,
      this.btnBgColor,
      this.btnText,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 30,
        onPressed: onTap,
        //minWidth: double.infinity,
        color: btnBgColor ?? AppColors.kcPrimaryColor,
        padding:  EdgeInsets.symmetric(vertical: verticlePadding??10,horizontal: horizontalPadding??10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(color: borderColor ?? AppColors.kcTransparent)),
        child: Text(
            textAlign: TextAlign.center,
            btnText.toString(),
            style: buttonTextStyle ?? AppStyles.txt15sizeW600ckcWhite));
  }
}
