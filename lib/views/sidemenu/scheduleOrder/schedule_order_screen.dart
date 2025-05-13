import 'package:deepaskitchen/views/sidemenu/scheduleOrder/schedule_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../uttils/constants.dart';
import '../../../widget/common_widget.dart';
import '../sidemenu_view.dart';


class ScheduleOrderScreen extends StatelessWidget {
  final controller = Get.put(ScheduleOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopAppBar("Hi, Deepa's"),
      drawer: const SideMenu(),
      backgroundColor: mainBg,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Select Items', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            ...controller.items.map((item) {
              return Obx(() => Row(
                children: [
                  Checkbox(
                    value: controller.selectedItems[item]?.value,
                    onChanged: (val) =>
                    controller.selectedItems[item]?.value = val ?? false,
                  ),
                  Expanded(child: Text(item)),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: TextEditingController(
                          text: controller.itemQuantities[item]?.value.toString() ?? '1'),
                      onChanged: (val) {
                        final qty = int.tryParse(val) ?? 1;
                        controller.itemQuantities[item]?.value = qty;
                      },
                    ),
                  )
                ],
              ));
            }),

            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Obx(() => ElevatedButton(
                    onPressed: () => controller.pickDate(context),
                    child: Text(controller.selectedDate.value == null
                        ? 'Select Date'
                        : DateFormat('dd MMM yyyy')
                        .format(controller.selectedDate.value!)),
                  )),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Obx(() => ElevatedButton(
                    onPressed: () => controller.pickTime(context),
                    child: Text(controller.selectedTime.value == null
                        ? 'Select Time'
                        : controller.selectedTime.value!.format(context)),
                  )),
                ),
              ],
            ),

            SizedBox(height: 20),
            TextField(
              controller: controller.addressController,
              decoration: InputDecoration(
                labelText: 'Delivery Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.contactController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.instructionsController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: 'Special Instructions',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.scheduleOrder,
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              child: Text('Schedule Order'),
            )
          ],
        ),
      ),
    );
  }
}
