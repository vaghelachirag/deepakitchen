import 'package:get/get.dart';

import '../../data/repository/recommend_product_repo.dart';
import '../../models/cart/product_model.dart';

class RecommendProductController extends GetxController {
  final RecommendProductRepo recommendProductRepo;
  RecommendProductController({required this.recommendProductRepo});
  List<dynamic> _recommendProductList = [];
  List<dynamic> get recommendProductList => _recommendProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendProductList() async {
    Response response = await recommendProductRepo.getRecommendProductList();
    if (response.statusCode == 200) {
      _recommendProductList = [];
      _recommendProductList.addAll(product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }
}
