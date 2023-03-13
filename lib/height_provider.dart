import 'package:flutter/material.dart';

class HeightProvider with ChangeNotifier {
  double _height = 170;
  double get height => _height;

  set height(double newValaue) {
    _height = newValaue;
    notifyListeners();
  }
}
