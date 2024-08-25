import 'package:flutter/material.dart';
import 'package:provider_review/AddToCart/items.dart';

class Cart extends ChangeNotifier {
  List<Items> CartItems = [];
  double Price = 0.0;
  void add(Items items) {
    CartItems.add(items);
    Price += items.Price;
    notifyListeners();
  }

  void remove(Items items) {
    CartItems.remove(items);
    notifyListeners();
  }

  int get count {
    return CartItems.length;
  }

  double get TotalPrice {
    return Price;
  }
}
