import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/menue_item.dart';
import 'package:foodpal/app/model/generic_model.dart/our_menu_model.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class OurMenuCarsualSlider extends StatefulWidget {
  const OurMenuCarsualSlider({super.key});

  @override
  State<OurMenuCarsualSlider> createState() => _OurMenuCarsualSliderState();
}

class _OurMenuCarsualSliderState extends State<OurMenuCarsualSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          autoPlayCurve: Curves.ease,
          reverse: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlay: true,
          padEnds: false, // Set to false to align first item to the left
          aspectRatio: 20 / 10,
          viewportFraction: 0.25,
          enableInfiniteScroll: true,
          initialPage: 0, // Start with first item
        ),
        items: List.generate(OurMenuModel.allOffersList.length, (index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: MenueItem(
                  imagePath: OurMenuModel.allOffersList[index].image,
                  title: OurMenuModel.allOffersList[index].title,
                ),
              ),
            ],
          );
        }));
  }
}
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:foodpal/app/custom_widget/menue_item.dart';
// import 'package:foodpal/app/model/generic_model.dart/our_menu_model.dart';
// import 'package:foodpal/app/res/assets/image_assets.dart';
// import 'package:get/get.dart';

// class OurMenuCarsualSlider extends StatefulWidget {
//   const OurMenuCarsualSlider({super.key});

//   @override
//   State<OurMenuCarsualSlider> createState() => _OurMenuCarsualSliderState();
// }

// class _OurMenuCarsualSliderState extends State<OurMenuCarsualSlider> {
//   int _current = 0; // Track current page index
//   final CarouselSliderController _controller = CarouselSliderController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 120,
//       width: Get.width * 0.2,
//       color: Colors.red,
//       child: Column(
//         children: [
//           CarouselSlider(
//             carouselController: _controller,
//             options: CarouselOptions(
//               autoPlayCurve: Curves.ease,
//               reverse: true,
//               autoPlayInterval: Duration(seconds: 2),
//               autoPlay: true,
//               padEnds: false,
//               aspectRatio: 20 / 10,
//               viewportFraction: 0.25,
//               enableInfiniteScroll: true,
//               initialPage: 0,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _current = index;
//                 });
//               },
//             ),
//             items: List.generate(OurMenuModel.allOffersList.length, (index) {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10)),
//                     child: MenueItem(
//                       imagePath: OurMenuModel.allOffersList[index].image,
//                       title: OurMenuModel.allOffersList[index].title,
//                     ),
//                   ),
//                 ],
//               );
//             }),
//           ),
//           // Add indicators
//           Container(
//             color: Colors.yellow,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: OurMenuModel.allOffersList.asMap().entries.map((entry) {
//                 return GestureDetector(
//                   onTap: () => _controller.animateToPage(entry.key),
//                   child: Container(
//                     width: 8.0,
//                     height: 8.0,
//                     margin:
//                         EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: (Theme.of(context).brightness == Brightness.dark
//                               ? Colors.white
//                               : Colors.black)
//                           .withOpacity(_current == entry.key ? 0.9 : 0.4),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
