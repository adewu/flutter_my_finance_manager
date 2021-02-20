import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum WebAction { action }

class WebActionCreator {
  static Action onAction() {
    return const Action(WebAction.action);
  }
}
