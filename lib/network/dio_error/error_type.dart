import 'package:dio/dio.dart';


import '../../global/constant/strings.dart';
import 'model/error.dart';

class DioErrorMsg {
  static String getErrorMsg(DioException error, {data}) {
    String errorDescription = "";

    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = AppStrings.errorDescriptionMessage;
        break;
      case DioExceptionType.connectionTimeout:
        "";
        break;
      case DioExceptionType.unknown:
        errorDescription = AppStrings.internetConnectionErrorMessage;
      break;
      case DioExceptionType.receiveTimeout:
        errorDescription = AppStrings.errorDescriptionMessage;
        break;
      case DioExceptionType.badResponse:
        ErrorModel errorResponseModel = ErrorModel.fromJson(data);

        if (errorResponseModel.message != null) {
          errorDescription = errorResponseModel.message!;
        } else {
          errorDescription = AppStrings.errorDescriptionMessage;
        }
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = "";
        break;
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
        break;
      case DioExceptionType.connectionError:
      // TODO: Handle this case.
        break;
    }
    return errorDescription;
  }
}