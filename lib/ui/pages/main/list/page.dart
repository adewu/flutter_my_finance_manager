import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_finance_manager/ui/pages/main/list/wrapper.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListPage extends Page<ListState, Map<String, dynamic>> {
  ListPage()
      : super(
          wrapper: ListWrapper,
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ListState>(
              adapter: null, slots: <String, Dependent<ListState>>{}),
          middleware: <Middleware<ListState>>[],
        );
}
