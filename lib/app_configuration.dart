import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_my_finance_manager/ui/pages/main/home/page.dart';
import 'package:flutter_my_finance_manager/ui/pages/main/list/page.dart';
import 'package:flutter_my_finance_manager/ui/pages/main/news/page.dart';
import 'package:flutter_my_finance_manager/ui/pages/main/page.dart';
import 'package:flutter_my_finance_manager/ui/pages/web/page.dart';



import 'constant/constant.dart';
import 'constant/page_route_name.dart';

/// 创建时间：2020/4/23 
/// 作者：wuxm
/// 描述：

class AppConfiguration{

 static Map<String, Page<Object, dynamic>> sPages = <String, Page<Object, dynamic>>{
   PageRouteName.MAIN: MainPage(),
   PageRouteName.HOME: HomePage(),
   PageRouteName.HOME_LIST: ListPage(),
   PageRouteName.HOME_NEWS: NewsPage(),
   PageRouteName.WEB: WebPage(),


 };







}