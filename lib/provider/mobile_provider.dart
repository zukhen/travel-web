
import 'package:flutter/material.dart';

class MobileProvider extends ChangeNotifier {
  bool _isOpenNavbar = false;

  bool get isOpenNavbar => _isOpenNavbar;

  void setOpenNavbar() {
    _isOpenNavbar = !_isOpenNavbar;
    notifyListeners();
  }
}
