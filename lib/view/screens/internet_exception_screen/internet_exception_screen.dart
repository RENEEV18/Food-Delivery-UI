import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/login_screen/login_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wifi_off,
                size: 150,
                color: Colors.black.withOpacity(0.7),
              ),
              AppSizedBox.kHeight,
              const Text(
                'No internet Connection',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.8,
                ),
              ),
              AppSizedBox.kHeight5,
              const Text(
                'Your internet connection iscurrently\nnot available please check or ty again.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.8,
                  color: AppColors.kGrey,
                ),
              ),
              const ButtonWidget(screen: LoginScreen(), text: "Try again")
            ],
          ),
        ),
      ),
    );
  }
}
