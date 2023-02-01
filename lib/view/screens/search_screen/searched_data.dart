import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/view/screens/product_view_screen/product_view.dart';

class SearchScreenData extends StatelessWidget {
  const SearchScreenData({super.key});

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
          "Spicy chieckns",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              AppSizedBox.kHeight10,
              Text(
                "Found 6 results",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 4 / 7),
                  itemBuilder: (context, index) {
                    return Transform.translate(
                      offset: Offset(0.0, index.isOdd ? 100 : 0.0),
                      child: InkWell(
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
                                    width: 220,
                                    child: Card(
                                      color: AppColors.kWhite,
                                      surfaceTintColor: AppColors.kWhite,
                                      elevation: 100,
                                      shadowColor: AppColors.kWhite,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
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
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
