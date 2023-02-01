import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_ui/view/screens/search_screen/searched_data.dart';

class SearchController extends ChangeNotifier {
  bool isloading = false;
  SearchController(context) {
    timer(context);
  }
  void timer(context) {
    isloading == true;
    notifyListeners();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return const SearchScreenData();
          },
        ),
      );
    });
    isloading = false;
    notifyListeners();
  }
}
