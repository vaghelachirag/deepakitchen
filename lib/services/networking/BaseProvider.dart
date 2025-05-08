import 'package:get/get_connect.dart';

import 'ApiConstants.dart';
import 'interceptors/RequestInterceptor.dart';
import 'interceptors/ResponseInterceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
