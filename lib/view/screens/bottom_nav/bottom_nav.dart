import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavController>(
      builder: (context, value, child) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            currentIndex: value.currentIndex,
            backgroundColor: const Color.fromRGBO(237, 237, 237, 1.000),
            selectedItemColor: const Color.fromRGBO(
              146,
              85,
              253,
              1.000,
            ),
            unselectedItemColor: AppColors.kBlack,
            items: value.items,
            onTap: (tap) {
              value.bottomNav(tap);
            },
          ),
          body: value.screens[value.currentIndex],
        );
      },
    );
  }
}
