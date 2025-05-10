import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global/constant/colors.dart';
import '../global/constant/styles.dart';



class CommonDialog extends StatelessWidget {
  VoidCallback? onPositiveClick;
  VoidCallback? onNegativeClick;
  VoidCallback? onClose;
  String? title;
  String? btnTitleFirst;
  String? btnTitleSecond;
  Widget widget;

  CommonDialog(
      {super.key,
        required this.onPositiveClick,
        required this.onNegativeClick,
        required this.onClose,
        required this.title,
        required this.btnTitleFirst,
        required this.btnTitleSecond,
        required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Card(
                      elevation: 0,
                      child: Column(children: [

                        title != ""
                            ? Row(children: [
                          Expanded(
                              flex: 90,
                              child: Text(
                                title!,
                                textAlign: TextAlign.center,
                                style: AppStyles.txt18sizeW600BlackColor,
                              )),
                          // Expanded(
                          //     flex: 10,
                          //     child: IconButton(
                          //         onPressed: onClose ??
                          //                 () {
                          //               Get.back();
                          //             },
                          //         icon: const Icon(Icons.close)))
                        ])
                            : Container(),
                        Row(children: [
                          Flexible(child: Center(child: widget))
                        ]),

                        const SizedBox(height: 25),

                        buildButton(),
                        const SizedBox(height: 5)
                      ]))))
        ]));
  }

  buildButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(width: btnTitleFirst != "" ? 8 : 0),
      btnTitleFirst != ""
          ? Container(
            height: 40,
              width: 80,
              decoration: AppStyles.whiteButton,
              child: TextButton(
                  onPressed: onNegativeClick ??
                          () {
                        Get.back();
                      },
                  child: Text(btnTitleFirst!,
                      style: AppStyles.txt14sizeW500ColorWhite)))
          : Container(),
      SizedBox(width: btnTitleFirst != "" ? 20 : 0),
      Container(
          height: 40,
         // width: 60,
          decoration: BoxDecoration(
              color: AppColors.kcGreenFont,
              border: Border.all(color: AppColors.kcTransparent),
              borderRadius: BorderRadius.circular(5)),
          child: TextButton(
              onPressed: onPositiveClick,
              child: Text(btnTitleSecond!,
                  style: AppStyles.txt14sizeW500ColorWhite))),
      SizedBox(width: btnTitleFirst != "" ? 8 : 0),
    ]);
  }
}