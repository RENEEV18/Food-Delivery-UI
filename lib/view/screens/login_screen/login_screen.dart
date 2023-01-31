import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/home_screen/home_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSizedBox.kloginHeight,
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: const Image(
                      image: AssetImage("assets/images/img 3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const TabBar(
                  labelColor: AppColors.kBlack,
                  labelStyle: TextStyle(
                      color: AppColors.kBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      fontSize: 16),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(
                        146,
                        85,
                        253,
                        1.000,
                      ),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 90.0),
                  ),
                  indicatorColor: Color.fromRGBO(
                    146,
                    85,
                    253,
                    1.000,
                  ),
                  tabs: [
                    Tab(
                      text: "Login",
                    ),
                    Tab(
                      text: "Sign-up",
                    ),
                  ],
                ),
                AppSizedBox.textformHeight,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            'Email address',
                            style: TextStyle(
                              color: AppColors.kBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      AppSizedBox.kHeight,
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.kBlack,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                      AppSizedBox.kSplashHeight,
                      const Text(
                        "Forgot Passcode?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      const Center(
                        child:
                            ButtonWidget(screen: HomeScreen(), text: "Login"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
