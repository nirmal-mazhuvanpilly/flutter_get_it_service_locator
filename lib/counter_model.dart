import 'package:flutter/cupertino.dart';

abstract class Counter extends ChangeNotifier {
  int get counter;

  void incrementCounter();

  void decrementCounter();
}

class CounterModel extends Counter {
  int _counter = 0;

  @override
  int get counter => _counter;

  @override
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  @override
  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
