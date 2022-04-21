import 'package:flutter/material.dart';
import 'package:flutter_get_it_service_locator/counter_model.dart';
import 'package:flutter_get_it_service_locator/service_locator.dart';
import 'package:provider/provider.dart';

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
            Consumer<Counter>(
              builder: (context, value, child) {
                return Text(
                  value.counter.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
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
