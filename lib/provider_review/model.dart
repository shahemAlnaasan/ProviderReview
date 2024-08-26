import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  int num = 0;
  String name1 = "shahem";

  get showOne => num;
  get showTwo => name1;

  void changeName() {
    num++;
    notifyListeners();
  }

  void changeName1() {
    name1 = "wael";
    notifyListeners();
  }
}

class MyModel {
  int num = 0;
  String name1 = "alaa";

  get showOne => num;
  get showTwo => name1;

  void ChangeName() {
    num++;
  }

  void ChangeName1() {
    name1 = "wael";
  }
}
