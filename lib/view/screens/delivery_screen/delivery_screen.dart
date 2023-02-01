import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/controller/profile_controller/profile_controller.dart';
import 'package:food_delivery_ui/view/screens/payment_screen/payment_screen.dart';
import 'package:provider/provider.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

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
                "Delivery",
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
                    "Address details",
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
                      letterSpacing: -0.8,
                      color: Color.fromRGBO(
                        146,
                        85,
                        253,
                        1.000,
                      ),
                    ),
                  ),
                ],
              ),
              AppSizedBox.kHeight10,
              Card(
                margin: EdgeInsets.zero,
                color: AppColors.kWhite,
                surfaceTintColor: AppColors.kWhite,
                elevation: 100,
                shadowColor: AppColors.kWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Marvis Kparobo",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Divider(),
                      Text(
                        "Km 5 refinery road opposite re\npublic road,effurun,delta state",
                        style: TextStyle(color: AppColors.kGrey),
                      ),
                      Divider(),
                      Text(
                        "+23348-8899765",
                        style: TextStyle(color: AppColors.kGrey),
                      ),
                    ],
                  ),
                ),
              ),
              AppSizedBox.kHeight30,
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
                margin: EdgeInsets.zero,
                color: AppColors.kWhite,
                surfaceTintColor: AppColors.kWhite,
                elevation: 100,
                shadowColor: AppColors.kWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.all(20),
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
                  itemCount: 2,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      endIndent: 30,
                      indent: 70,
                    );
                  },
                ),
              ),
              AppSizedBox.textformHeight,
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
              AppSizedBox.textformHeight,
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.70,
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ),
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
