import 'package:fish_redux/fish_redux.dart';

enum ApiEnv {
  DEV,
  PROD,
}

class Constant {
  static ApiEnv sCurrentEnv = ApiEnv.DEV;

  ///flutter工程需要调用原生插件获取结果开关
  static bool sIsNeedMockData = true;

  static AbstractRoutes routes;

  static String sUserToken = "21de8769db36578a20c6852bf6e0e17a";


  static String getUrlPreFix() {
//    if(sCurrentEnv == edv)
  }
}
