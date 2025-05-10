import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'alert_dailog.dart';
import 'common_dialog.dart';
import 'custom_progress_widget.dart';
import 'loader.dart';


class DialogueHelper {
  static hideProgress() {
    if (Get.isDialogOpen!) {
      Navigator.of(Get.context!, rootNavigator: true).pop('dialog');
    }
  }

  static showProgress({String? msg}) {
    Get.dialog(ProgressLoader(msg: msg ?? ""));
  }

  static void showLoading([String? message]) {
    Get.dialog(
        Theme(
            data: ThemeData(dialogBackgroundColor: Colors.transparent),
            child: Builder(builder: (context) {
              return const Dialog(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                           CustomProgressIndicatorWidget()
                          ]

                      )));
            })),
        barrierColor: Colors.transparent,
        barrierDismissible: false);
  }

  static void hideLoading() {
    if (Get.isDialogOpen!) {
      Navigator.of(Get.context!, rootNavigator: true).pop('dialog');
    }
  }

  static showAppDialogue({
    required GestureTapCallback onPositiveClick,
    GestureTapCallback? onNegativeClick,
    GestureTapCallback? onClose,
    required String title,
    required String btnTitleFirst,
    required String btnTitleSecond,
    required Widget subTitle,
  }) {
    showDialog(
        context: Get.context!,
        builder: (ctx) {
          return CommonDialog(
              onClose: onClose,
              btnTitleFirst: btnTitleFirst,
              btnTitleSecond: btnTitleSecond,
              onNegativeClick: onNegativeClick,
              onPositiveClick: onPositiveClick,
              widget: subTitle,
              title: title);
        });
  }


  static showAlertDialogue(
      {VoidCallback? onClose, String? title, Widget? widget}) {
    showDialog(
        context: Get.context!,
        builder: (ctx) {
          return AlertDialogue(onClose: onClose, title: title, widget: widget);
        });
  }
}