import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/profile_screen/profile_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';
import 'package:food_delivery_ui/widgets/listtile_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.8,
                ),
              ),
              AppSizedBox.kHeight30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Personal details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.8,
                    ),
                  ),
                  Text(
                    "change",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.8,
                        color: AppColors.kGrey),
                  ),
                ],
              ),
              AppSizedBox.kHeight10,
              Card(
                color: AppColors.kWhite,
                surfaceTintColor: AppColors.kWhite,
                elevation: 100,
                shadowColor: AppColors.kWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber,
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Screenshot 2023-02-01 155512.png'))),
                            ),
                            AppSizedBox.kHeight,
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          AppSizedBox.kHeight,
                          Text(
                            "Marvis Ighedosa",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "dosamarvis@gmail.com",
                            style: TextStyle(color: AppColors.kGrey),
                          ),
                          Divider(
                            thickness: 10,
                            height: 20,
                            endIndent: 30,
                            color: AppColors.kBlack,
                          ),
                          Text(
                            "No 15 uti street off ovie\npalace road effurun delta\nstate",
                            style: TextStyle(color: AppColors.kGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              AppSizedBox.kHeight,
              const ProfileCardWidget(
                text: "Orders",
              ),
              AppSizedBox.kHeight,
              const ProfileCardWidget(
                text: "Pending reviews",
              ),
              AppSizedBox.kHeight,
              const ProfileCardWidget(
                text: "Faq",
              ),
              AppSizedBox.kHeight,
              const ProfileCardWidget(
                text: "Help",
              ),
              AppSizedBox.kHeight,
              const Center(
                  child: ButtonWidget(screen: ProfileScreen(), text: "Update")),
            ],
          ),
        ),
      ),
    );
  }
}
