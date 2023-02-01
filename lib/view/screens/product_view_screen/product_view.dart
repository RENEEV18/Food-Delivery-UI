import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/common/colors/colors.dart';
import 'package:food_delivery_ui/common/const/const.dart';
import 'package:food_delivery_ui/controller/product_view_controller/product_view_controller.dart';
import 'package:food_delivery_ui/view/screens/cart_screen/cart_screen.dart';
import 'package:food_delivery_ui/widgets/button.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductViewController>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            actions: const [
              Icon(Icons.favorite_outline),
              AppSizedBox.kappWidth,
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 4,
                      itemBuilder: (context, index, realIndex) {
                        return CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage(
                            images[0],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 250,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          value.getProductCarousel(index);
                        },
                      ),
                    ),
                    AppSizedBox.kHeight10,
                    AnimatedSmoothIndicator(
                      activeIndex: value.activeIndex,
                      count: 4,
                      effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: AppColors.kWhite,
                        activeDotColor: Color.fromRGBO(
                          146,
                          85,
                          253,
                          1.000,
                        ),
                      ),
                    ),
                    AppSizedBox.kHeight30,
                    const Text(
                      "Veggie tomato mix",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    AppSizedBox.kHeight10,
                    const Text(
                      "N1,900",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppColors.kGrey),
                    ),
                    AppSizedBox.kHeight30,
                    Row(
                      children: const [
                        AppSizedBox.kappWidth,
                        Text(
                          "Delivery info",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        AppSizedBox.kappWidth,
                        Text(
                          "Delivered between monday aug and\nthursday 20 from 8pm to 9:32pm",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.kGrey,
                          ),
                        ),
                      ],
                    ),
                    AppSizedBox.kHeight30,
                    Row(
                      children: const [
                        AppSizedBox.kappWidth,
                        Text(
                          "Return policy",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        AppSizedBox.kappWidth,
                        Text(
                          "All our foods are double checked\nbefore leaving our stores so by\nany case you found a broken food\nplease contact our hotline immediately.",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.kGrey,
                          ),
                        ),
                      ],
                    ),
                    AppSizedBox.kHeight30,
                    const ButtonWidget(
                        screen: CartScreen(), text: "Add to cart"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
