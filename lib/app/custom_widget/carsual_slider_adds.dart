import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/adds_container_widget.dart';
import 'package:foodpal/app/model/generic_model.dart/adds_offers_model.dart';

class FamilyFeastSlider extends StatefulWidget {
  VoidCallback ontap;
  FamilyFeastSlider({super.key, required this.ontap});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<FamilyFeastSlider> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: List.generate(
            AddsOffers.allOffersList.length,
            (index) {
              return InkWell(
                onTap: widget.ontap,
                child: AddsContainerWidget(
                    off: false,
                    title: AddsOffers.allOffersList[index].title,
                    subtitle: AddsOffers.allOffersList[index].subtitle,
                    offprice: AddsOffers.allOffersList[index].offprice,
                    code: AddsOffers.allOffersList[index].code,
                    imagePath: AddsOffers.allOffersList[index].image),
              );
            },
          ),
          carouselController: _controller,
          options: CarouselOptions(
              // autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: AddsOffers.allOffersList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 6.0,
              height: 6.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == entry.key ? Colors.white : Colors.grey

                  //  Colors.black
                  //     .withOpacity(_current == entry.key ? 0.9 : 0.4)
                  ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
