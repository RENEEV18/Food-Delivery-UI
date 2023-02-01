import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/orders_screen/orders_screen.dart';
import 'package:food_delivery_ui/view/screens/payment_screen/payment_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  AppSizedBox.kHeight30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.swipe_left_outlined,
                        color: AppColors.kGrey,
                      ),
                      AppSizedBox.kWidth10,
                      Text('swipe on an item to delete'),
                    ],
                  ),
                  AppSizedBox.kHeight10,
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: ValueKey(index),
                          child: SizedBox(
                            height: 110,
                            width: 140,
                            child: Card(
                              color: AppColors.kWhite,
                              surfaceTintColor: AppColors.kWhite,
                              elevation: 100,
                              shadowColor: AppColors.kWhite,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    images[index],
                                  ),
                                ),
                                title: Text(
                                  items[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          '#1,900',
                                          style:
                                              TextStyle(color: AppColors.kGrey),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                              146,
                                              85,
                                              253,
                                              1.000,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                  onTap: () {},
                                                  child: const Text(
                                                    "-",
                                                    style: TextStyle(
                                                      color: AppColors.kWhite,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                              const Text(
                                                "1",
                                                style: TextStyle(
                                                  color: AppColors.kWhite,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: const Text(
                                                  "+",
                                                  style: TextStyle(
                                                    color: AppColors.kWhite,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return AppSizedBox.kHeight10;
                      },
                      itemCount: 4),
                ],
              ),
            ),
            const Align(
                alignment: Alignment.bottomCenter,
                child: ButtonWidget(
                    screen: PaymentScreen(), text: "Complete order")),
          ],
        ),
      ),
    );
  }
}
