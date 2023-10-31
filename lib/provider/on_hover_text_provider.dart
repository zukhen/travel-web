
import 'package:flutter/material.dart';
class OnHoverTextProvider extends ChangeNotifier {
  int _hoveredIndex = -1;

  int get hoveredIndex => _hoveredIndex;

  void setHover(int index) {
    _hoveredIndex = index;
    notifyListeners();
  }
}