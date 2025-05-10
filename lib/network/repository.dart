import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as dio_data;
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'dart:convert';
import 'dart:io';
import '../models/dashboard/offerModel.dart';
import '../uttils/dailog_helper.dart';
import '../uttils/utility.dart';
import 'dio_error/error_type.dart';
import 'endpoint.dart';
import 'enviroment.dart';
import 'loggin_interceptor.dart';

const successCode = 200;
const String env = String.fromEnvironment("ENV");
String endpointAPI = "";

class NebulaDirectAppRepository {
  static String msg = "";
  static Dio dio = Dio();

  static void init() {
    endpointAPI = Environment().getEndpoint(env);
    dio = Dio(BaseOptions(
        baseUrl: endpointAPI,
        //   requestEncoder: gzipEncoder,
        receiveDataWhenStatusError: true,
        sendTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60)));
    IOHttpClientAdapter? httpClient =
        dio.httpClientAdapter as IOHttpClientAdapter?;
    httpClient!.onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return null;
    };
    dio.interceptors.add(LoggingInterceptor());
  }

  // gzip request
  static List<int> gzipEncoder(String request, RequestOptions options) {
    options.headers.putIfAbsent("Content-Encoding", () => "gzip");
    return gzip.encode(utf8.encode(request));
  }


  static void showErrorMsg(DioException e) {
    if (e.response != null) {
      showError(e, data: e.response!.data);
    } else {
      showError(e);
    }
  }

  static showError(error, {dynamic data}) {
    if (error.type == DioExceptionType.unknown) {
      msg = DioErrorMsg.getErrorMsg(error);
      if (msg.isNotEmpty) {
        Utils.errorSnackBar(message: DioErrorMsg.getErrorMsg(error));
        /*Get.showSnackbar(
            Utils.errorSnackBar(message: DioErrorMsg.getErrorMsg(error)));*/
      }
    } else {
      msg = DioErrorMsg.getErrorMsg(error, data: data);
      if (msg.isNotEmpty) {
        Utils.errorSnackBar(
            message: DioErrorMsg.getErrorMsg(error, data: data));
        /*     Get.showSnackbar(Utils.errorSnackBar(
            message: DioErrorMsg.getErrorMsg(error, data: data)));*/
      }
    }
  }


  static Future<OfferModel> getOfferBannerList() async {
    try {
      var response = await dio.get(EndPoint.getPopupOffer);
      switch (response.statusCode) {
        case 200:
          return OfferModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      DialogueHelper.hideLoading();
      Utils.errorSnackBar(message: e.toString());
    }
    throw {msg};
  }

}
