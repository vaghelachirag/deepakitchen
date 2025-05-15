import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product {
  final int id;
  final String name;
  final double price;
  RxInt quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    int initialQuantity = 0,
  }) : quantity = initialQuantity.obs;
}