import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_finance_manager/ui/pages/main/news/wrapper.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NewsPage extends Page<NewsState, Map<String, dynamic>> {
  NewsPage()
      : super(
            wrapper: NewsWrapper,
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NewsState>(
                adapter: null,
                slots: <String, Dependent<NewsState>>{
                }),
            middleware: <Middleware<NewsState>>[
            ],);

}
