import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  int num = 0;
  String name1 = "shahem";

  get ShowOne => num;
  get ShowTwo => name1;

  void ChangeName() {
    num++;
    notifyListeners();
  }

  void ChangeName1() {
    name1 = "wael";
    notifyListeners();
  }
}

class MyModel {
  int num = 0;
  String name1 = "alaa";

  get ShowOne => num;
  get ShowTwo => name1;

  void ChangeName() {
    num++;
  }

  void ChangeName1() {
    name1 = "wael";
  }
}
