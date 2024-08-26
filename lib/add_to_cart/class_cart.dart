import 'package:flutter/material.dart';
import 'package:provider_review/add_to_cart/items.dart';

class Cart extends ChangeNotifier {
  List<Items> cartItems = [];
  double Price = 0.0;

  void add(Items items) {
    cartItems.add(items);
    Price += items.price;
    notifyListeners();
  }

  void remove(Items items) {
    cartItems.remove(items);
    notifyListeners();
  }

  int get count {
    return cartItems.length;
  }

  double get totalPrice {
    return Price;
  }
}
