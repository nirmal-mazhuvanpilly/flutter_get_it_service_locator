import 'package:flutter/material.dart';
import 'package:flutter_get_it_service_locator/cart_view.dart';
import 'package:flutter_get_it_service_locator/counter_model.dart';
import 'package:flutter_get_it_service_locator/service_locator.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final instance = getIt<Counter>();

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
            Row(
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: instance.incrementCounter,
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: instance.decrementCounter,
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CartView(),
                  ));
                },
                child: const Text("Goto Cart"))
          ],
        ),
      ),
    );
  }
}
