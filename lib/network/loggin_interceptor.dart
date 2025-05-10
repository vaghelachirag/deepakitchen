import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio_data;
import 'package:get/get.dart';

import '../global/constant/strings.dart';
import '../uttils/dailog_helper.dart';
import '../uttils/logger.dart';
import '../uttils/utility.dart';
import 'networking.dart';


class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger.logPrint(
        "headers======>: ${options.headers} ---------> ${options.method} ======= ${options.uri}");

    if (options.data is dio_data.FormData) {
      dio_data.FormData formData = options.data as dio_data.FormData;
      Logger.logPrint("FormData :  ${formData.fields}");
    }
    Logger.logPrint("<-- END HTTP");
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(response, ResponseInterceptorHandler handler) async {
    Logger.logPrint(
        "--> ${response.statusCode} ${response.realUri} RESPONSE::: $response");
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    DialogueHelper.hideLoading();
    Logger.logPrint(
        'ERROR[${err.response?.statusCode}] ====> PATH: ${err.requestOptions.path}');
    Logger.logPrint(err.message);
    bool result = Network.isInternetConnected.value;
    Logger.logPrint("hasInternetAccess=======>$result");
    if(result == false){
      Utils.errorSnackBar(message: AppStrings.pleaseCheckInternet);
    }
  //
    if (result == true &&
        (err.type == DioExceptionType.receiveTimeout ||
            err.type == DioExceptionType.connectionTimeout ||
            err.type == DioExceptionType.connectionError ||
            err.type == DioExceptionType.sendTimeout)) {
      Logger.logPrint("we are on under maintance");
    //  Get.offAllNamed(Routes.underMaintenance);
    } else if (err.response!.statusCode == 401 ||
        err.response!.statusCode == 403 ||
        err.response!.statusCode == 406) {
      Logger.logPrint("AppStrings.youHaveBeenLoggedOut");
     /* Get.showSnackbar(
          Utils.errorSnackBar(message: AppStrings.youHaveBeenLoggedOut));*/
      DialogueHelper.hideLoading();
    } else if (err.response!.statusCode == 400){
      Get.showSnackbar(
          Utils.errorSnackBar(message: "The user name or password is incorrect."));
    }
    else if (err.response!.statusCode == 500){
      Logger.logPrint("err.response!.statusCode == 500");
    }
    else {
      return super.onError(err, handler);
    }
  }
}