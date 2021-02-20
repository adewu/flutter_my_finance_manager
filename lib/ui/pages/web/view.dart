import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_finance_manager/ui/widgets/common/navigation/com_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(WebState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: [
        CommonBar(),
        Expanded(
          child: WebView(
            initialUrl: state.url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              state.controller.complete(webViewController);
            },
          ),
        ),
      ],
    ),
  );
}
