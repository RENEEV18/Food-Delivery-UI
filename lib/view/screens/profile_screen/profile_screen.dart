import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/controller/profile_controller/profile_controller.dart';
import 'package:food_delivery_ui/view/screens/edit_profile/edit_profile.dart';
import 'package:food_delivery_ui/widgets/button.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("My profile"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Information'),
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
                                  style: TextStyle(fontSize: 18),
                                ),
                                AppSizedBox.kHeight10,
                                Text(
                                  "dosamarvis@gmail.com",
                                  style: TextStyle(color: AppColors.kGrey),
                                ),
                                AppSizedBox.kHeight10,
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
                    AppSizedBox.kHeight30,
                    const Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.8,
                      ),
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
                      child: ListView.separated(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Consumer<ProfileContrller>(
                            builder: (context, value, child) {
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                horizontalTitleGap: 10,
                                leading: Radio(
                                  value: "payment",
                                  groupValue: value.type,
                                  onChanged: (radio) {
                                    value.radioCheck(radio);
                                  },
                                ),
                                title: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: colorContainer[index],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        iconContainer[index],
                                        color: AppColors.kBlack,
                                      ),
                                    ),
                                    AppSizedBox.kWidth10,
                                    Text(
                                      payment[index],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            endIndent: 30,
                            indent: 80,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(screen: EditProfile(), text: "Update"),
            ),
          ],
        ),
      ),
    );
  }
}
