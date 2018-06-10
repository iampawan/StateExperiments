import 'package:inherited/mycounter.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  MyCounter myCounter = new MyCounter(0);

  int get counts => myCounter.counter;

  void add() {
    myCounter.increaseCount();
    notifyListeners();
  }
}
