import 'package:flutter_get_it_service_locator/counter_model.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

setUpLocator() {
  //Register for Singleton class //Always create single instance for every instance creation
  getIt.registerLazySingleton<Counter>(() => CounterModel(counterValue: 0));
}
