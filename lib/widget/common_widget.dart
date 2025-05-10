import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/constant/assets.dart';
import '../global/constant/colors.dart';
import '../global/constant/styles.dart';
import '../uttils/constants.dart' as AppConstant;

Text labelTextBold(hint, double fontSize, Color labelTextColor) {
  return  Text(
    hint,
    style: TextStyle(
        color: labelTextColor,
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setSp(fontSize),
        fontFamily: AppConstant.labelFrontBold),
  );
}

Text labelTextRegular(hint, double fontSize, Color labelTextColor) {
  return  Text(
    hint,
    style: TextStyle(
        color: labelTextColor,
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setSp(fontSize),
        fontFamily: AppConstant.labelFrontRegular),
  );
}

Text labelTextLight(hint, double fontSize, Color labelTextColor) {
  return
    Text(
      hint,
      style: TextStyle(
          color: labelTextColor,
          fontWeight: FontWeight.w400,
          fontSize:   ScreenUtil().setSp(fontSize),
          fontFamily: AppConstant.labelFrontLight),
    );
}


Container availableOrNotText(bool isAvailable){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color:   isAvailable ? Colors.green.withOpacity(0.7) : Colors.red.withOpacity(0.7),
      borderRadius: BorderRadius.circular(6),
    ),
    child:  Text(
      isAvailable ? 'Available' : 'Not Available',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: AppConstant.labelFrontRegular,
        fontSize: 10,
      ),
    ),
  );

}


AppBar getTopAppBar(String title){
  return  AppBar(
    title: Text(title, style: AppStyles.txt16sizeW600White),
    centerTitle: false,
    backgroundColor: AppColors.kcPrimaryAccentColor,
    iconTheme: IconThemeData(color: AppColors.kcWhite),
    actions: [
      InkWell(
        onTap: () {

        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AppAssets.icNotification,
              height: 20,
              width: 20,
              color: Colors.white,
              fit: BoxFit.fill),
        ),
      ),
    ],
  );
}