import 'package:deepaskitchen/views/home/tabs/product/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deepa's Kitchen"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => {
              print("TotalPrice${controller.totalPrice}")
            }
          )
        ],
      ),
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
