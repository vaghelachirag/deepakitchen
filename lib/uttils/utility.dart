import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../global/constant/assets.dart';
import '../global/constant/colors.dart';
import '../global/constant/styles.dart';

class Utils {
  /// When we want to show error to the user this method can be user and we also have message param
  /// so we can make it dynamic message
  static errorSnackBar({String title = 'Error', required String message}) {
    Get.log('[$title] $message', isError: true);
    if (message != '' && message != '{}' && message != "null") {
     /* return Fluttertoast.showToast(

          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
         // backgroundColor: Colors.red,
          fontSize: 16.0
      );*/
      return Get.showSnackbar(GetSnackBar(
          icon: Image.asset(AppAssets.icAppIcon, height: 28),
          messageText: Text(message,
              style: Get.textTheme.bodySmall!
                  .merge(const TextStyle(color: Colors.white))),
          margin:
          EdgeInsets.only(bottom: Get.height * 0.2, right: 20, left: 20),
          backgroundColor: AppColors.grediantThird,//Colors.red,
        //  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          borderRadius: 8,
          snackPosition:SnackPosition.BOTTOM,
          duration: const Duration(seconds: 1)));
    }
  }


 static customMessage({required String textMessage}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: AppColors.kcWhite,
          border: Border.all(color: AppColors.kcCaptionLightGray, width: 1.2)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AppAssets.appLogo, height: 28),
          const SizedBox(width: 10.0,),
          Flexible(child: Text(textMessage,style: AppStyles.txt12sizeW500Black,)),
        ],
      ),
    );
  }
  /// When we want to show success message to the user this method can be user and we also have message param
  /// so we can make it dynamic message
  static successSnackBar({String title = 'Success', required String message}) {
    Get.log('[$title] $message');
    if (message != '' && message != '{}') {


     /*return  FToast.showToast(child:customMessage(textMessage: message) );
     *//* return  FToast.showToast(
        child: customMessage(textMessage: message),
      );*/

     /*return Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
        //  backgroundColor: Colors.green,
          fontSize: 16.0
      );*/

      return Get.showSnackbar(
          GetSnackBar(
            icon: Image.asset(AppAssets.icAppIcon, height: 28),
          messageText: Text(message,
              style: Get.textTheme.bodySmall!
                  .merge(const TextStyle(color: Colors.white))),
          margin:
          EdgeInsets.only(bottom: Get.height * 0.2, right: 20, left: 20),
          backgroundColor: AppColors.grediantThird,//Colors.green,
        //  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          borderRadius: 8,
          snackPosition:SnackPosition.BOTTOM,
          dismissDirection: DismissDirection.horizontal,
          duration: const Duration(seconds: 1))

      );
    }
  }

  static GetSnackBar notificationSnackBar(
      {String title = 'Notification',
        String? message,
        OnTap? onTap,
        Widget? mainButton}) {
    Get.log("[$title] $message", isError: false);
    return GetSnackBar(
      onTap: onTap,
      mainButton: mainButton,
      titleText: Text(title.tr,
          style: const TextStyle(
              color: AppColors.kcBlack, fontSize: 15)),
      messageText: Text(message ?? "",
          style:
          const TextStyle(color: AppColors.kcGray, fontSize: 15)),
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.all(10),
      backgroundColor: AppColors.kcWhite,
      // icon: SizedBox.fromSize(
      //     size: const Size(40, 40),
      //     child: ClipOval(
      //         child: Image.asset(AppAssets.imgAppLogo,
      //             width: 30, height: 30, fit: BoxFit.contain))),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      borderRadius: 10,
      duration: const Duration(seconds: 5),
    );
  }

}
