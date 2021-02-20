import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_my_finance_manager/app.dart';
import 'package:flutter_my_finance_manager/constant/constant.dart';
import 'package:flutter_my_finance_manager/constant/page_route_name.dart';

class MainState implements Cloneable<MainState> {
  List<Widget> pages;
  int currentPageIndex;
  PageController pageController;
  @override
  MainState clone() {
    return MainState()..pages = pages
      ..currentPageIndex = currentPageIndex
      ..pageController = pageController;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState()
    ..currentPageIndex = 0
    ..pageController = PageController(initialPage: 0)
    ..pages = [
      Constant.routes.buildPage(PageRouteName.HOME, null),
      Constant.routes.buildPage(PageRouteName.HOME_LIST, null),
      Constant.routes.buildPage(PageRouteName.HOME_NEWS, null),
    ];
}
