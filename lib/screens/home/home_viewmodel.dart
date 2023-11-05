import 'package:flutterstacked/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  CounterServices obj = CounterServices();

  int get counterValue => obj.counter;

  homeAddFunction() {
    obj.addCounterValue();
    rebuildUi();
  }
}
