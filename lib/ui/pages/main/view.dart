import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  return Scaffold(
    body: PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: state.pageController,
      children: state.pages,
    ),
    bottomNavigationBar: Container(
      // height: 150,
      child: BottomNavigationBar(
        fixedColor: Colors.green,
        //底部导航栏按钮选中时的颜色
        type: BottomNavigationBarType.fixed,
        //底部导航栏的适配，当item多的时候都展示出来
        currentIndex: state.currentPageIndex,
        onTap: (index) {
            state.pageController.jumpToPage(index);
          dispatch(MainActionCreator.onSwitchTabAction(index));
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore,size: 23,), title: Text("首页",style: TextStyle(fontSize: 10),)),
          BottomNavigationBarItem(icon: Icon(Icons.book,size: 23,), title: Text("列表",style: TextStyle(fontSize: 10),),),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 23,), title: Text("24H",style: TextStyle(fontSize: 10),))
        ],
      ),
    ),
  );
}
