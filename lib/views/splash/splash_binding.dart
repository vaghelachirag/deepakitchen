import 'package:deepaskitchen/views/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class SplashBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}