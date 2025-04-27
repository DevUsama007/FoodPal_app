import 'package:foodpal/app/res/assets/image_assets.dart';

class RestaurantNearbyModel {
  final String title;
  final String image;
  final String offPrice;
  final String price;
  final String location;
  final double likes;

  RestaurantNearbyModel(
      {required this.title,
      required this.image,
      required this.offPrice,
      required this.price,
      required this.location,
      required this.likes});

  static List<RestaurantNearbyModel> allOffersList = [
    RestaurantNearbyModel(
      image: AppAssets.burgerWb,
      title: 'Savory Bites Bistro',
      offPrice: '20%off',
      price: 'Up to \$10.25',
      location: '6km',
      likes: 1.2,
    ),
    RestaurantNearbyModel(
      image: AppAssets.culinoryOasis,
      title: 'Golden Glaze Delicous',
      offPrice: '20%off',
      price: 'Up to \$10.25',
      location: '4.5km',
      likes: 1.2,
    ),
    RestaurantNearbyModel(
      image: AppAssets.fusionFlavors,
      title: 'Urban Spice Fusion',
      offPrice: '20%off',
      price: 'Up to \$10.25',
      location: '1.5km',
      likes: 1.2,
    ),
    RestaurantNearbyModel(
      image: AppAssets.gourmetHeaven,
      title: 'Urban Spice Fusion',
      offPrice: '20%off',
      price: 'Up to \$10.25',
      location: '1.5km',
      likes: 1.2,
    ),
    RestaurantNearbyModel(
      image: AppAssets.pizaWb,
      title: 'Urban Spice Fusion',
      offPrice: '20%off',
      price: 'Up to \$10.25',
      location: '1.5km',
      likes: 1.2,
    ),
    RestaurantNearbyModel(
      image: AppAssets.sizzlingPlater,
      title: 'Urban Spice Fusion',
      offPrice: '20%off',
      price: 'Up to \$10.25',
      location: '1.5km',
      likes: 1.2,
    ),
  ];
}
