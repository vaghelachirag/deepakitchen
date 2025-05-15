import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FoodItemController extends GetxController {
  var quantity = 0.obs;

  void increment() => quantity.value++;
  void decrement() {
    if (quantity > 0) {
      quantity.value--;
    }
  }
}