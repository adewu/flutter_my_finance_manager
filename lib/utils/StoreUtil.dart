import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_my_finance_manager/app.dart';
import 'package:flutter_my_finance_manager/global_store/store.dart';

class StoreUtil {
  static Store<AppState> _globalStore;

  static Store<AppState> get GlobalStore {
    if (_globalStore == null) {
      _globalStore = createStore<AppState>(AppState(), buildReducer());
    }
    return _globalStore;
  }
}

class AppState implements Cloneable<AppState> {
  @override
  AppState clone() {
    return null;
  }
}

Reducer<AppState> buildReducer() {
  return asReducer<AppState>(<Object, Reducer<AppState>>{
//    AppAction.request: _request,
  });
}





enum AppAction { request }

class AppActionCreator {

  static Action onRequest(int index) {
    return Action(AppAction.request,payload: index);
  }

}