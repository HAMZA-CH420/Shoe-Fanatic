import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  //method to increment counter
  void increment() {
    counter++;
    notifyListeners();
  }

  //method to decrement counter
  void decrement() {
    if (counter > 0) {
      counter--;
    }
    notifyListeners();
  }
}
