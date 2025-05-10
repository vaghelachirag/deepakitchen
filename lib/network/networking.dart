
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../global/constant/strings.dart';
import '../uttils/logger.dart';
import '../uttils/utility.dart';


class Network {
  static RxBool isInternetConnected = false.obs;
  static Network? instance;

  static Network? getInstance() {
    instance ??= Network._();
    return instance;
  }

  Network._() {
    Connectivity().onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    Logger.logPrint("result_connectionStatus $result");
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isInternetConnected.value = true;
      Logger.logPrint("result_connectionStatus 26 $result");
    } else if (result == ConnectivityResult.none) {
      noInternetMessage(formHere: "Please connect to internet");
      isInternetConnected.value = false;
      Logger.logPrint("result_connectionStatus 29 $result");
    }
    Logger.logPrint("isInternetConnected $isInternetConnected");
  }

  static isNetworkConnected() {
    if (!isInternetConnected.value) {
      noInternetMessage(formHere: "isNetworkConnected()");
    }
    return isInternetConnected.value;
  }

  static void noInternetMessage({String? formHere}) {
    Utils.errorSnackBar(message: AppStrings.pleaseCheckInternet);
  }
}