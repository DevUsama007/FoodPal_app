import 'package:foodpal/app/res/assets/image_assets.dart';

class OurMenuModel {
  final String title;
  final String image;

  OurMenuModel({
    required this.title,
    required this.image,
  });

  static List<OurMenuModel> allOffersList = [
    OurMenuModel(
      image: AppAssets.meat,
      title: 'Meat',
    ),
    OurMenuModel(
      image: AppAssets.drink,
      title: 'Cold Drinks',
    ),
    OurMenuModel(
      image: AppAssets.desert,
      title: 'Deserts',
    ),
    OurMenuModel(
      image: AppAssets.burger,
      title: 'Burger',
    ),
    OurMenuModel(
      image: AppAssets.burger,
      title: 'LargeB',
    ),
  ];
}
