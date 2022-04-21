import 'package:flutter/material.dart';
import 'package:flutter_get_it_service_locator/counter_view.dart';
import 'package:flutter_get_it_service_locator/service_locator.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'get_it',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const CounterView(),
    );
  }
}
