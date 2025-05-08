import 'package:get/get.dart';

import '../../providers/CategoryProvider.dart';
import '../../providers/OfferProvider.dart';
import '../../providers/ProductProvider.dart';
import '../../repositories/CategoryRepository.dart';
import '../../repositories/OfferRepository.dart';
import '../../repositories/ProductRepository.dart';
import 'HomeController.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferRepository>(() => OfferRepository(Get.find()));
    Get.lazyPut<OfferProvider>(() => OfferProvider(Get.find()));

    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
    Get.lazyPut<CategoryProvider>(() => CategoryProvider(Get.find()));
    
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
