import 'package:deepaskitchen/views/sidemenu/scheduleOrder/schedule_order_controller.dart';
import 'package:get/get.dart';



class ScheduleOrderBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<ScheduleOrderController>(() => ScheduleOrderController());
  }
}