import 'dart:async';

import 'package:get/get.dart';

import '../../../widget/common_widget.dart';
import '../../routes/routes.dart';


class SplashController extends GetxController {


  var keepMeLogin = false;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAndToNamed(Routes.home);
    });
  }
}
