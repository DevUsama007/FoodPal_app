import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/custom_widget/custom_appbar.dart';
import 'package:foodpal/app/model/generic_model.dart/adds_offers_model.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/view/product_detail_screen.dart';
import 'package:get/get.dart';

class BestOffers extends StatefulWidget {
  const BestOffers({super.key});

  @override
  State<BestOffers> createState() => _BestOffersState();
}

class _BestOffersState extends State<BestOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(title: 'best_offers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            AddsOffers.allOffersList.length,
            (index) {
              return Container(
                child: InkWell(
                  onTap: () {
                    Get.to(ProductDetailScreen(
                        rating: 5.0,
                        subtitle: AddsOffers.allOffersList[index].subtitle,
                        title: AddsOffers.allOffersList[index].title,
                        image: AddsOffers.allOffersList[index].image,
                        price: AddsOffers.allOffersList[index].offprice
                            .replaceAll('\n', ' ')));
                  },
                  child: AddsContainerWidget(
                          off: true,
                          title: AddsOffers.allOffersList[index].title,
                          offprice: AddsOffers.allOffersList[index].offprice,
                          subtitle: AddsOffers.allOffersList[index].subtitle,
                          code: AddsOffers.allOffersList[index].code,
                          imagePath: AddsOffers.allOffersList[index].image)
                      .paddingSymmetric(horizontal: 20, vertical: 10),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
