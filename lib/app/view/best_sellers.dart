import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/custom_widget/best_sellers_widget.dart';
import 'package:foodpal/app/custom_widget/custom_appbar.dart';
import 'package:foodpal/app/model/generic_model.dart/best_offers_model.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:get/get.dart';

class BestSellers extends StatefulWidget {
  const BestSellers({super.key});

  @override
  State<BestSellers> createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(title: 'best_sellers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 15,
              children: List.generate(
                BestOffersModel.allOffersList.length,
                (index) {
                  return BestSellersWidget(
                      title: BestOffersModel.allOffersList[index].title,
                      image: BestOffersModel.allOffersList[index].image,
                      duration: BestOffersModel.allOffersList[index].duration,
                      isliked: BestOffersModel.allOffersList[index].isliked,
                      likes: BestOffersModel.allOffersList[index].likes,
                      offPercantage:
                          BestOffersModel.allOffersList[index].offPercantage,
                      price: BestOffersModel.allOffersList[index].price);
                },
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
