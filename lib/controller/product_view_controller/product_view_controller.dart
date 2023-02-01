import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductViewController extends ChangeNotifier {
  int activeIndex = 0;

  void getProductCarousel(index) {
    activeIndex = index;
    notifyListeners();
  }

  void goBackHome(context) {
    Navigator.of(context).pop();
    activeIndex = 0;
    notifyListeners();
  }
}
