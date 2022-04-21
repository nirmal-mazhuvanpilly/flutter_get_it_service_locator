import 'package:flutter/cupertino.dart';

abstract class Counter {
  late ValueNotifier<int> counter;

  void incrementCounter();

  void decrementCounter();
}

class CounterModel extends Counter {
  int value;

  CounterModel({required this.value}) {
    counter = ValueNotifier(value);
  }

  @override
  void incrementCounter() {
    value++;
    counter.value = value;
  }

  @override
  void decrementCounter() {
    value--;
    counter.value = value;
  }
}
