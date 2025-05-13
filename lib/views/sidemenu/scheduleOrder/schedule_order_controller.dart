import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleOrderController extends GetxController {
  final items = [
    'Thepla',
    'Dhokla',
    'Muthiya',
    'Handvo',
    'Khaman',
    'Cheese Dhokla',
    'Ghughra',
  ];

  var selectedItems = <String, RxBool>{}.obs;
  var itemQuantities = <String, RxInt>{}.obs;

  var selectedDate = Rxn<DateTime>();
  var selectedTime = Rxn<TimeOfDay>();

  final addressController = TextEditingController();
  final contactController = TextEditingController();
  final instructionsController = TextEditingController();

  @override
  void onInit() {
    for (var item in items) {
      selectedItems[item] = false.obs;
      itemQuantities[item] = 1.obs;
    }
    super.onInit();
  }

  void pickDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if (picked != null) selectedDate.value = picked;
  }

  void pickTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) selectedTime.value = picked;
  }

  void scheduleOrder() {
    if (!selectedItems.values.any((e) => e.value)) {
      Get.snackbar('Error', 'Please select at least one item.');
      return;
    }
    if (selectedDate.value == null || selectedTime.value == null) {
      Get.snackbar('Error', 'Please choose delivery date and time.');
      return;
    }

    // You can print or post data to a backend here
    Get.snackbar('Success', 'Order scheduled successfully!');
  }
}