import 'endpoint.dart';

class Environment {
  getEndpoint(String env) {
   /* if (env == "live") {
      return EndPoint.baseUrlLive;
    } else if (env == "dev") {
      return EndPoint.baseUrlDev;
    } else {
      return EndPoint.baseUrlDev;
    }*/

    return EndPoint.baseUrl;
  }
}