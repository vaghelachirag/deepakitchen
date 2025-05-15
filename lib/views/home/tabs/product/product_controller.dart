import 'package:get/get.dart';

import 'Product.dart';


class ProductController extends GetxController {
  var productList = <Product>[
    Product(id: 1, name: 'Thepla', price: 20),
    Product(id: 2, name: 'Dhokla', price: 30),
    Product(id: 3, name: 'Handvo', price: 40),
  ].obs;

  double get totalPrice => productList
      .map((p) => p.price * p.quantity.value)
      .fold(0, (a, b) => a + b);

  List<Product> get cartItems =>
      productList.where((p) => p.quantity.value > 0).toList();

  void increaseQty(int index) => productList[index].quantity++;

  void decreaseQty(int index) {
    if (productList[index].quantity > 0) {
      productList[index].quantity--;
    }
  }
}