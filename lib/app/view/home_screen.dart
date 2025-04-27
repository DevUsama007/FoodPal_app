import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/best_sellers_widget.dart';
import 'package:foodpal/app/custom_widget/bottom_sheet/custom_bottom_sheet.dart';
import 'package:foodpal/app/custom_widget/carsual_slider_adds.dart';
import 'package:foodpal/app/custom_widget/free_delivery_widget.dart';
import 'package:foodpal/app/custom_widget/ourMenu.dart';
import 'package:foodpal/app/custom_widget/restaurant_nearby_widget.dart';
import 'package:foodpal/app/custom_widget/search_field.dart';
import 'package:foodpal/app/custom_widget/search_filter_widget.dart';
import 'package:foodpal/app/custom_widget/see_all_widget.dart';
import 'package:foodpal/app/custom_widget/sorting_widget.dart';
import 'package:foodpal/app/model/generic_model.dart/best_offers_model.dart';
import 'package:foodpal/app/model/generic_model.dart/restaurant_nearby_model.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/view/drawer.dart';
import 'package:foodpal/app/view/product_detail_screen.dart';
import 'package:foodpal/app/view_model/home_screen_controler.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenControler controler = Get.put(HomeScreenControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homebackgroundColor,
      drawer: Drawer(
        backgroundColor: AppColor.backgroundColor.withOpacity(0.9),
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        shadowColor: Colors.yellow,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              size: 17,
            ),
            Text(
              "location_name".tr,
              style: AppTextStyles.customText(fontSize: 16),
            ),
          ],
        ),
        actions: [
          InkWell(
              onTap: () {
                FocusScope.of(context).unfocus();
                Get.toNamed(RouteName.cartScreen);
              },
              child: Icon(Icons.shopping_cart_outlined).paddingOnly(right: 15))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SearchTextField(
                        width: Get.width * 0.75,
                        height: 50,
                        controller: controler.searchFieldControler,
                        prefixIcon: Icons.search,
                        backgroundColor: Colors.white,
                        hintText: "search_your_food".tr)
                    .paddingOnly(right: 10),
                SortingWidget(
                  ontap: () {
                    CustomBottomSheet.show(
                        backgroundColor:
                            const Color.fromARGB(255, 231, 231, 231),
                        context: context,
                        child: SearchFilterWidget());
                  },
                )
              ],
            ).paddingSymmetric(vertical: 10),
            Text(
              "our_menu".tr,
              style: AppTextStyles.customText(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 80,
              width: Get.width,
              child: OurMenuCarsualSlider(),
            ),
            FreeDeliveryWidget(title: "free_delivery".tr)
                .paddingSymmetric(vertical: 20),

            // Best sellers section goes here
            SeeAllWidget(
                title: "best_sellers".tr,
                ontap: () {
                  Get.toNamed(RouteName.bestSellers);
                },
                all: "see_all".tr),
            Wrap(
              spacing: 10,
              runSpacing: 15,
              children: List.generate(
                4,
                (index) {
                  return InkWell(
                    onTap: () {
                      Get.to(ProductDetailScreen(
                          title: BestOffersModel.allOffersList[index].title,
                          subtitle:
                              BestOffersModel.allOffersList[index].description,
                          image: BestOffersModel.allOffersList[index].image,
                          price: BestOffersModel.allOffersList[index].price,
                          rating: BestOffersModel.allOffersList[index].rating));
                    },
                    child: BestSellersWidget(
                        title: BestOffersModel.allOffersList[index].title,
                        image: BestOffersModel.allOffersList[index].image,
                        duration: BestOffersModel.allOffersList[index].duration,
                        isliked: BestOffersModel.allOffersList[index].isliked,
                        likes: BestOffersModel.allOffersList[index].likes,
                        offPercantage:
                            BestOffersModel.allOffersList[index].offPercantage,
                        price: BestOffersModel.allOffersList[index].price),
                  );
                },
              ),
            ),

            Container(
                height: 210,
                child: FamilyFeastSlider(
                  ontap: () {
                    Get.toNamed(RouteName.bestOffers);
                  },
                )).paddingSymmetric(vertical: 10),

            SeeAllWidget(
                title: 'restaurant_nearby'.tr,
                ontap: () {
                  Get.toNamed(RouteName.restaurantNearbyScreen);
                },
                all: 'view_all'.tr),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return InkWell(
                      onTap: () => Get.to(ProductDetailScreen(
                          rating: 4.9,
                          subtitle:
                              "${RestaurantNearbyModel.allOffersList[index].offPrice} ${RestaurantNearbyModel.allOffersList[index].price}",
                          title:
                              RestaurantNearbyModel.allOffersList[index].title,
                          image:
                              RestaurantNearbyModel.allOffersList[index].image,
                          price: RestaurantNearbyModel
                              .allOffersList[index].price)),
                      child: RestaurantNearbyWidget(
                        imagepath:
                            RestaurantNearbyModel.allOffersList[index].image,
                        likes: RestaurantNearbyModel.allOffersList[index].likes,
                        location:
                            RestaurantNearbyModel.allOffersList[index].location,
                        offPrice:
                            RestaurantNearbyModel.allOffersList[index].offPrice,
                        price: RestaurantNearbyModel.allOffersList[index].price,
                        title: RestaurantNearbyModel.allOffersList[index].title,
                      ).paddingOnly(right: 10),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 50,
            )
          ],
        ).paddingOnly(left: 15, right: 15, bottom: 15),
      ),
    );
  }
}
