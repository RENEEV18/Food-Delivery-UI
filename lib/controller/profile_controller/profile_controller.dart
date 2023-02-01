import 'package:flutter/material.dart';

class ProfileContrller extends ChangeNotifier {
  String? type;
  void radioCheck(value) {
    type = value.toString();
    notifyListeners();
  }
}
