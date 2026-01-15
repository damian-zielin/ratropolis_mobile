import 'package:flutter/foundation.dart';
import 'package:game_core/src/game_route.dart';

class GameNavigation extends ChangeNotifier {
  final List<GameRoute> _stack = [const GameRouteGame()];

  List<GameRoute> get stack => List.unmodifiable(_stack);
  GameRoute get current => _stack.last;
  bool get canPop => _stack.length > 1;

  void push(GameRoute route) {
    _stack.add(route);
    notifyListeners();
  }

  void pop() {
    if (!canPop) return;
    _stack.removeLast();
    notifyListeners();
  }

  void replace(GameRoute route) {
    _stack
      ..removeLast()
      ..add(route);
    notifyListeners();
  }

  void reset(GameRoute route) {
    _stack
      ..clear()
      ..add(route);
    notifyListeners();
  }
}
