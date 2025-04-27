import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/custom_widget/custom_appbar.dart';
import 'package:foodpal/app/custom_widget/restaurant_nearby_detail_widget.dart';
import 'package:foodpal/app/model/generic_model.dart/restaurant_nearby_model.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/view/product_detail_screen.dart';
import 'package:get/get.dart';

class RestaurantNearbyScreen extends StatefulWidget {
  const RestaurantNearbyScreen({super.key});

  @override
  State<RestaurantNearbyScreen> createState() => _RestaurantNearbyScreenState();
}

class _RestaurantNearbyScreenState extends State<RestaurantNearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(title: 'restaurant_nearby'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            RestaurantNearbyModel.allOffersList.length,
            (index) {
              return InkWell(
                onTap: () => Get.to(ProductDetailScreen(
                    rating: 4.8,
                    title: RestaurantNearbyModel.allOffersList[index].title,
                    subtitle: 'The detail about the product not available',
                    image: RestaurantNearbyModel.allOffersList[index].image,
                    price: '\$12.29')),
                child: RestaurantNearbyDetailWidget(
                    imagepath: RestaurantNearbyModel.allOffersList[index].image,
                    likes: RestaurantNearbyModel.allOffersList[index].likes,
                    locaiton:
                        RestaurantNearbyModel.allOffersList[index].location,
                    title: RestaurantNearbyModel.allOffersList[index].title),
              );
            },
          ),
        ),
      ),
    );
  }
}
