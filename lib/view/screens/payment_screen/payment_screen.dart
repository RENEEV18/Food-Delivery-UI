import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/controller/profile_controller/profile_controller.dart';
import 'package:food_delivery_ui/view/screens/profile_screen/profile_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';
import 'package:food_delivery_ui/widgets/listtile_widget.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: -0.8),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Payment",
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
                    "Payment method",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.8,
                    ),
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
                child: ListView.separated(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Consumer<ProfileContrller>(
                      builder: (context, value, child) {
                        if (index != 2) {
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
                        } else {
                          return const SizedBox(
                            height: 60,
                          );
                        }
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
              AppSizedBox.kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Delivery method",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.8,
                    ),
                  ),
                ],
              ),
              AppSizedBox.kHeight,
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
                        if (index != 2) {
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
                                AppSizedBox.kWidth10,
                                Text(
                                  delivery[index],
                                ),
                              ],
                            ),
                          );
                        } else {
                          return const SizedBox(
                            height: 60,
                          );
                        }
                      },
                    );
                  },
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      endIndent: 30,
                      indent: 70,
                    );
                  },
                ),
              ),
              AppSizedBox.kHeight10,
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: -0.8,
                      ),
                    ),
                    Text(
                      "23,000",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.8,
                      ),
                    ),
                  ],
                ),
              ),
              AppSizedBox.kHeight30,
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.70,
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: AppColors.kWhite,
                            title: Text(
                              "Please note",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.8,
                                  fontSize: 15),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "Delivery to Mainland",
                                  style: TextStyle(
                                      letterSpacing: -0.8,
                                      fontSize: 15,
                                      color: AppColors.kGrey),
                                ),
                                Text(
                                  "N1000-N2000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.8,
                                      fontSize: 15),
                                ),
                                AppSizedBox.kHeight30,
                                Divider(),
                                Text(
                                  "Delivery to island",
                                  style: TextStyle(
                                      letterSpacing: -0.8,
                                      fontSize: 15,
                                      color: AppColors.kGrey),
                                ),
                                Text(
                                  "N2000-N3000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.8,
                                      fontSize: 15),
                                ),
                                AppSizedBox.kHeight10,
                              ],
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(
                                          146,
                                          85,
                                          253,
                                          1.000,
                                        ),
                                        foregroundColor: AppColors.kWhite,
                                      ),
                                      child: const Text('Proceed'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(
                          146,
                          85,
                          253,
                          1.000,
                        ),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.kWhite),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Proceed to payment",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
