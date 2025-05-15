import 'package:deepaskitchen/views/home/tabs/mycart/mycart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/common_widget.dart';
import '../../../sidemenu/sidemenu_view.dart';

class MyCartScreen extends GetView<MyCartController> {
   MyCartScreen({ Key? key }) : super(key: key);
  final MyCartController controller = Get.put(MyCartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar:  getTopAppBar("Cart"),
      body: Obx(() => ListView.builder(
        itemCount: controller.productList.length,
        itemBuilder: (context, index) {
          final product = controller.productList[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('₹ ${product.price.toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => controller.decreaseQty(index)),
                Obx(() => Text('${product.quantity.value}')),
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => controller.increaseQty(index)),
              ],
            ),
          );
        },
      )),
    );
  }
}