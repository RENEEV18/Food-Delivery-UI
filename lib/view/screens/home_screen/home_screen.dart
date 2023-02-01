import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/product_view_screen/product_view.dart';
import 'package:food_delivery_ui/view/screens/search_screen/searched_data.dart';

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
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: TextFormField(
                          onEditingComplete: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const SearchScreenData();
                                },
                              ),
                            );
                          },
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
                  Row(
                    children: const [
                      Spacer(),
                      Text(
                        'See more',
                        style: TextStyle(
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
                  SizedBox(
                    height: 400,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const ProductViewScreen();
                                },
                              ),
                            );
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    SizedBox(
                                      height: 280,
                                      width: 230,
                                      child: Card(
                                        color: AppColors.kWhite,
                                        surfaceTintColor: AppColors.kWhite,
                                        elevation: 10,
                                        shadowColor: AppColors.kWhite,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              items[index],
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: -0.8,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            AppSizedBox.kHeight5,
                                            Text(
                                              price[index],
                                              style: const TextStyle(
                                                color: Color.fromRGBO(
                                                  146,
                                                  85,
                                                  253,
                                                  1.000,
                                                ),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            AppSizedBox.kHeight40,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Material(
                                shape: const CircleBorder(),
                                elevation: 50,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    images[index],
                                  ),
                                  radius: 80,
                                ),
                              ),
                            ],
                          ),
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
