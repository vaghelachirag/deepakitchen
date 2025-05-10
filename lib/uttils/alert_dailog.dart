import 'package:flutter/material.dart';
import 'package:get/get.dart';



class AlertDialogue extends StatelessWidget {
  final VoidCallback? onClose;
  final String? title;
  final Widget? widget;

  const AlertDialogue({super.key, this.onClose, this.title, this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Card(
                      elevation: 0,
                      child: Column(children: [
                      /*  title != ""
                            ? Row(children: [
                          Expanded(
                              flex: 90,
                              child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 35.0),
                                  child: Text(
                                    title!,
                                    textAlign: TextAlign.center,
                                    style: AppStyles.txt24sizeW600kcCaptionLightGray
                                        .copyWith(fontSize: 20),
                                  ))),
                         *//* Expanded(
                              flex: 10,
                              child: IconButton(
                                  onPressed: onClose ??
                                          () {
                                        Get.back();
                                      },
                                  icon: const Icon(Icons.close)))*//*
                        ])
                            : Row(children: [
                          const Spacer(),
                          IconButton(
                              onPressed: onClose ??
                                      () {
                                    Get.back();
                                  },
                              icon: const Icon(Icons.close))
                        ]),*/
                        const SizedBox(height: 15),
                        Row(children: [Flexible(child: Center(child: widget))]),
                        const SizedBox(height: 5)
                      ]))))
        ]));
  }
}