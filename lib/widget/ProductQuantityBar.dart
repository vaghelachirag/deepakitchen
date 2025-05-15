import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProductQuantityBar extends StatelessWidget {
  /// Pass a tag if you created the controller with one.
  final String? tag;
  const ProductQuantityBar({this.tag, super.key});

  @override
  Widget build(BuildContext context) {
    // Grab the controller that belongs to *this* product.
    final qCtrl = Get.find<QuantityController>(tag: tag);

    return Obx(
          () => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: qCtrl.decrement,
          ),
          Text(
            qCtrl.quantity.value.toString(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: qCtrl.increment,
          ),
        ],
      ),
    );
  }
}