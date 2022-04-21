import 'package:flutter/cupertino.dart';

abstract class Counter extends ChangeNotifier {
  int get counter;

  void incrementCounter();

  void decrementCounter();
}

class CounterModel extends Counter {
  int counterValue;

  CounterModel({required this.counterValue});

  @override
  void incrementCounter() {
    counterValue++;
    notifyListeners();
  }

  @override
  void decrementCounter() {
    counterValue--;
    notifyListeners();
  }

  @override
  int get counter => counterValue;
}
