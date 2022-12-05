import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  double _value = 1.0;
  double get value => _value;
  @override
  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
