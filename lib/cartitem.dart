
import 'package:inherited/product.dart';

class Cart {
  List<CartItem> items = [];

  int get itemCount => items.length;

  void add(Product p) {
    items.add(CartItem(p, 1));
  }
}

class CartItem {
  Product product;
  int itemCount;
  CartItem(this.product, this.itemCount);
}
