import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          actions: const [
            Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.kGrey,
              size: 30,
            ),
            AppSizedBox.kappWidth,
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Delicious\nfood for you',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.8,
                    ),
                  ),
                  AppSizedBox.kHeight30,
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.kGrey,
                            ),
                            prefixIcon: const Icon(
                              CupertinoIcons.search,
                              size: 30,
                            ),
                            fillColor: AppColors.kWhite,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: AppColors.kWhite),
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: AppColors.kWhite),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppSizedBox.kHeight,
                  const TabBar(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    isScrollable: true,
                    labelStyle: TextStyle(
                        color: AppColors.kBlack,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        fontSize: 17),
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
                      insets: EdgeInsets.symmetric(horizontal: 70.0),
                    ),
                    indicatorColor: Color.fromRGBO(
                      146,
                      85,
                      253,
                      1.000,
                    ),
                    tabs: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Tab(
                          text: "Foods",
                        ),
                      ),
                      Tab(
                        text: "Drinks",
                      ),
                      Tab(
                        text: "Snacks",
                      ),
                      Tab(
                        text: "Sauce",
                      ),
                    ],
                  ),
                  AppSizedBox.kHeight,
                  SizedBox(
                    height: 300,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            SizedBox(
                              height: 300,
                              width: 220,
                              child: Card(
                                color: AppColors.kWhite,
                                surfaceTintColor: AppColors.kWhite,
                                elevation: 100,
                                shadowColor: AppColors.kWhite,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 30,
                              top: -10,
                              child: CircleAvatar(
                                radius: 80,
                              ),
                            ),
                            const SizedBox(
                              height: 200,
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return AppSizedBox.kWidth10;
                      },
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}