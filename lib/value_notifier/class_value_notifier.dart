import 'package:flutter/material.dart';

class MyValueNotifier extends ValueNotifier {
  MyValueNotifier(super.value);
  void increment() {
    value++;
  }
}
