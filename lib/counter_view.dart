import 'package:flutter/material.dart';
import 'package:flutter_get_it_service_locator/counter_model.dart';
import 'package:flutter_get_it_service_locator/service_locator.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final instance1 = getIt<Counter>();
  final instance2 = getIt<Counter>();

  @override
  void initState() {
    super.initState();
    //Returns true if register for singleton
    //Returns false if register for factory
    debugPrint((instance1 == instance2).toString());

    instance1.addListener(update);
    instance2.addListener(update);
  }

  @override
  void dispose() {
    instance1.removeListener(update);
    instance2.removeListener(update);
    super.dispose();
  }

  void update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("get_it"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              instance1.counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: instance1.decrementCounter,
                    child: const Text("-")),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: instance2.incrementCounter,
                    child: const Text("+"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
