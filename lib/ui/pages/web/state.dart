import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebState implements Cloneable<WebState> {
  String url = "";
  Completer<WebViewController> controller = Completer<WebViewController>();

  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();

  @override
  WebState clone() {
    return WebState()
      ..url = url
      ..controller = controller;
  }
}

WebState initState(Map<String, dynamic> args) {
  return WebState()
    ..url = args["url"]
    ..controller = Completer<WebViewController>();
}
