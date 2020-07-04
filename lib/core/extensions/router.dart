import 'package:auto_route/auto_route.dart';

extension ClearHistory on ExtendedNavigatorState {
  Future<void> clearHistory() async {
    while (canPop()) {
      pop();
    }
  }
}
