import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/common/styles/common_style.dart';
import 'package:food_delivery_ui/view/screens/login_screen/login_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  AppSizedBox.kwidth,
                  Image(
                    image: AssetImage("assets/images/img 1.png"),
                    height: 50,
                  ),
                ],
              ),
              AppSizedBox.kHeight,
              Text(
                'Food for\nEveryone',
                style: Style().myStyle,
              ),
              AppSizedBox.kSplashHeight,
              const SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/images/img 2.png"),
                  fit: BoxFit.cover,
                ),
              ),
              const ButtonWidget(screen: LoginScreen(), text: "Get started")
            ],
          ),
        ),
      ),
    );
  }
}
