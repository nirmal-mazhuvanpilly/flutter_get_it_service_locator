import 'package:flutter/material.dart';
import 'package:flutter_get_it_service_locator/counter_model.dart';
import 'package:flutter_get_it_service_locator/service_locator.dart';

class CartView extends StatelessWidget {
  CartView({Key? key}) : super(key: key);

  final instanceCopy = getIt<Counter>();

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
            ValueListenableBuilder<int>(
                valueListenable: instanceCopy.counter,
                builder: (context, value, child) {
                  return Text(
                    value.toString(),
                    style: const TextStyle(fontSize: 30),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: instanceCopy.decrementCounter,
                    child: const Text("-")),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: instanceCopy.incrementCounter,
                    child: const Text("+"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
