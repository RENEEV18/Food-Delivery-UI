import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/view/screens/favourite_screen/favourite_screen.dart';
import 'package:food_delivery_ui/view/screens/history_screen/history.dart';
import 'package:food_delivery_ui/view/screens/home_screen/home_screen.dart';
import 'package:food_delivery_ui/view/screens/profile_screen/profile_screen.dart';

class BottomNavController extends ChangeNotifier {
  int currentIndex = 0;

  final screens = const [
    HomeScreen(),
    FavouriteScreen(),
    ProfileScreen(),
    HistoryScreen(),
  ];

  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.history,
        color: AppColors.kGrey,
      ),
      label: '',
    ),
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.favorite_outline,
    Icons.person_outline,
    Icons.history,
  ];

  void bottomNav(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
