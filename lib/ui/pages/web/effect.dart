import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<WebState> buildEffect() {
  return combineEffects(<Object, Effect<WebState>>{
    WebAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

_init(Action action, Context<WebState> ctx) {
  flutterWebviewPlugin.onProgressChanged.listen((progress){
    print(progress);
    setState(() {
      lineProgress = progress;
    });
  });

}

void _onAction(Action action, Context<WebState> ctx) {
}
