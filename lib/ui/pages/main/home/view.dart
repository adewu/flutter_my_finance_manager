import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_finance_manager/constant/page_route_name.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Column(
    children: [
      SizedBox(
        height: 50,
      ),
      Row(
        children: [
          GestureDetector(
            onTap: () {
              Map<String, dynamic> args = Map();
              args["url"] = "https://coinranking.com/";
              Navigator.pushNamed(viewService.context, PageRouteName.WEB,
                  arguments: args);
            },
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Center(child: Text("Crypto")),
            ),
          )
        ],
      ),
    ],
  );
}
