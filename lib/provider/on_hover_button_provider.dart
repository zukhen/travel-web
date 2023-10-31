
import 'package:flutter/material.dart';
class OnHoverButtonProvider extends ChangeNotifier {
  bool _isHovered = false;

  bool get isHovered => _isHovered;

  void setHover(bool value) {
    _isHovered = value;
    print("value button is $_isHovered");
    notifyListeners();
  }
}