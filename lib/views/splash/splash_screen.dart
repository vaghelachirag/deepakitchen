  import 'package:deepaskitchen/views/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../uttils/constants.dart' as ThemeColor;


class SplashPage extends StatelessWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Scaffold(
              backgroundColor: ThemeColor.primaryColor,
              body: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/app_logo.png",
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        );
      }
    );
  }
}
