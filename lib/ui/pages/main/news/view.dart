import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NewsState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: [
        SizedBox(height: 50,),
        Expanded(
          child: WebView(
            initialUrl: 'https://www.fx678.com/kx',
            javascriptMode: JavascriptMode.unrestricted,

          ),
        ),
      ],
    ),
  );
}
