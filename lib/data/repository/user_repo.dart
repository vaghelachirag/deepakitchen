import 'package:get/get.dart';

import '../../uttils/app_constant.dart';
import '../api/api_client.dart';

class UserRepo {
  final ApiClient apiClient;
  UserRepo({required this.apiClient});
  Future<Response> getUserInfo() async {
    return await apiClient.getData(AppConstant.USER_INFO_URL);
  }
}
