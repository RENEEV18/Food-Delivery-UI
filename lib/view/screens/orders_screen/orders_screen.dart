import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/login_screen/login_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: const Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Icon(
                Icons.shopping_cart_outlined,
                size: 150,
                color: Colors.black.withOpacity(0.7),
              ),
              AppSizedBox.kHeight,
              const Text(
                'No orders yet',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.8,
                ),
              ),
              AppSizedBox.kHeight5,
              const Text(
                'Hit the orange button down\nbelow to Create an order',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.8,
                  color: AppColors.kGrey,
                ),
              ),
              const Spacer(),
              const ButtonWidget(screen: LoginScreen(), text: "Start ordering")
            ],
          ),
        ),
      ),
    );
  }
}
