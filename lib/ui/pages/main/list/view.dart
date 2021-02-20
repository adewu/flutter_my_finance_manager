import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_finance_manager/utils/log_util.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: [
        SizedBox(height: 50,),
        Expanded(
          child: WebView(
            initialUrl: 'https://fund.eastmoney.com/data/fundranking.html#tall;c0;r;s6yzf;pn50;ddesc;qsd20200220;qed20210220;qdii;zq;gg;gzbd;gzfs;bbzt;sfbb',
            // initialUrl: 'https://fund.eastmoney.com/',
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
