
import 'package:deepaskitchen/views/home/tabs/mycart/mycart_controller.dart';
import 'package:get/get.dart';

class MyCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyCartController>(() => MyCartController());
  }
}
