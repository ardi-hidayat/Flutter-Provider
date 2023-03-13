import 'package:flutter/material.dart';

class WeightProvider with ChangeNotifier {
  double _weight = 70;
  double get weight => _weight;

  set weight(double newValaue) {
    _weight = newValaue;
    notifyListeners();
  }
}
