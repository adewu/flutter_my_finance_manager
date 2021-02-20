import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ListState implements Cloneable<ListState> {

  Completer<WebViewController> controller =
  Completer<WebViewController>();

  @override
  ListState clone() {
    return ListState() ..controller = controller;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState() .. controller = Completer<WebViewController>();
}
