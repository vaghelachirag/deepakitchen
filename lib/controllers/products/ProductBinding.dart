
import 'package:get/get.dart';

import '../../providers/ProductProvider.dart';
import '../../repositories/ProductRepository.dart';
import 'ProductController.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {  
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}
