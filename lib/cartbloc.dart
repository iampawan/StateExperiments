import 'dart:async';

import 'package:inherited/cartitem.dart';
import 'package:inherited/product.dart';

class CartBloc {
  Cart _cart = new Cart();

  Sink<Product> get addition => additionController.sink;

  final additionController = StreamController<Product>();

  Stream<int> get itemCount => subject.stream;

  final subject = StreamController<int>();

  CartBloc() {
    additionController.stream.listen(handle);
  }
  void handle(Product p) {
    _cart.add(p);
    subject.add(_cart.itemCount);
  }
}
