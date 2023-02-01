import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:food_delivery_ui/view/screens/my_offer_screen/my_offer_screen.dart';
import 'package:food_delivery_ui/view/screens/orders_screen/orders_screen.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final advancedDrawerController = AdvancedDrawerController();

    return Consumer<BottomNavController>(
      builder: (context, value, child) {
        return AdvancedDrawer(
          backdropColor: const Color.fromRGBO(237, 237, 237, 1.000),
          controller: advancedDrawerController,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          animateChildDecoration: true,
          disabledGestures: false,
          childDecoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          drawer: SafeArea(
            minimum: const EdgeInsets.all(20),
            child: ListTileTheme(
              textColor: AppColors.kBlack,
              iconColor: AppColors.kBlack,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.account_circle_rounded),
                      title: const Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          'Profile'),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OrdersScreen(),
                        ));
                      },
                      leading: const Icon(
                        Icons.shopping_cart_checkout,
                      ),
                      title: const Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          'Orders'),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OfferScreen(),
                        ));
                      },
                      leading: const Icon(Icons.sell_outlined),
                      title: const Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          'Offer and promo'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.sticky_note_2),
                      title: const Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          'Privacy policy'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.security),
                      title: const Text(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          'Security'),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign-out",
                            style: TextStyle(
                              color: AppColors.kBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Scaffold(
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
          ),
        );
      },
    );
  }
}
