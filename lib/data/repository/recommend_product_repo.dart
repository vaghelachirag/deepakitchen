
import 'package:get/get.dart';

import '../../uttils/app_constant.dart';
import '../api/api_client.dart';

class RecommendProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendProductRepo({required this.apiClient});

  Future<Response> getRecommendProductList() async {
    return await apiClient.getData(AppConstant.RECOMMENDED_PRODUCT_URL);
  }
}
