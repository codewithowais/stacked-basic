import 'package:flutterstacked/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  CounterServices obj = CounterServices();

  int get counterValue => obj.counter;

  profileAddFunction() {
    obj.addCounterValue();
    rebuildUi();
  }
}
