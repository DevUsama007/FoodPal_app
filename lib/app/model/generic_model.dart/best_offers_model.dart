import 'package:foodpal/app/res/assets/image_assets.dart';

class BestOffersModel {
  final String title;
  final String description;
  final String image;
  final String duration;
  final bool isliked;
  final double likes;
  final String price;
  double rating;
  final String offPercantage;
  BestOffersModel({
    required this.duration,
    required this.isliked,
    required this.likes,
    required this.price,
    required this.offPercantage,
    required this.title,
    required this.description,
    required this.image,
    required this.rating,
  });

  static List<BestOffersModel> allOffersList = [
    BestOffersModel(
        duration: '30 min',
        isliked: false,
        likes: 1.2,
        price: '\$10.99',
        offPercantage: '10%',
        title: 'Bacon Bliss Bombrastic',
        description:
            'mouthwatering explosion of flavor, crafted for true bacon lovers! Packed with crispy bacon, melty cheese, and bold spices all wrapped in a soft, toasted bun, this delicious delight delivers the perfect balance of smoky, savory, and satisfying in every bite. Get ready for a blissful bacon experience like no other! 🥓🔥',
        image: AppAssets.meat,
        rating: 4.3),
    BestOffersModel(
        duration: '30 min',
        isliked: false,
        likes: 1.2,
        price: '\$8.99',
        offPercantage: '',
        title: 'Sizzling Lemon Garlic Chicken',
        description:
            'flavor-packed dish that brings the heat and the freshness! Tender, juicy chicken is seared to perfection and infused with a bold blend of lemony tang and rich garlic goodness. Served sizzling hot, it’s the perfect harmony of bright citrus and savory spice in every bite! 🍋🧄🔥',
        image: AppAssets.piza,
        rating: 4.3),
    BestOffersModel(
        duration: '30 min',
        isliked: false,
        likes: 2.7,
        price: '\$9.99',
        offPercantage: '12%',
        title: 'Golden Glaze Delicous',
        description:
            'mouthwatering explosion of flavor, crafted for true bacon lovers! Packed with crispy bacon, melty cheese, and bold spices all wrapped in a soft, toasted bun, this delicious delight delivers the perfect balance of smoky, savory, and satisfying in every bite. Get ready for a blissful bacon experience like no other! 🥓🔥',
        image: AppAssets.desert,
        rating: 4.3),
    BestOffersModel(
        duration: '30 min',
        isliked: true,
        likes: 2.7,
        price: '\$8.99',
        offPercantage: '',
        title: 'Arctic Frost Quencher drink',
        description:
            'sweet and savory masterpiece that shines with flavor! Coated in a rich, golden glaze that’s perfectly balanced between honeyed sweetness and subtle spice, this dish delivers melt-in-your-mouth goodness with every bite. It’s golden, it’s glossy, it’s downright delicious! ✨🍯🔥',
        image: AppAssets.drink,
        rating: 4.3),
    BestOffersModel(
        duration: '30 min',
        isliked: true,
        likes: 5.2,
        price: '\$20.99',
        offPercantage: '24%',
        title: 'Bacon Bliss Bombrastic',
        description:
            'mouthwatering explosion of flavor, crafted for true bacon lovers! Packed with crispy bacon, melty cheese, and bold spices all wrapped in a soft, toasted bun, this delicious delight delivers the perfect balance of smoky, savory, and satisfying in every bite. Get ready for a blissful bacon experience like no other! 🥓🔥',
        image: AppAssets.meat,
        rating: 4.3),
    BestOffersModel(
        duration: '30 min',
        isliked: false,
        likes: 3.7,
        price: '\$34.99',
        offPercantage: '30%',
        title: 'Golden Glaze Delicous',
        description:
            'mouthwatering explosion of flavor, crafted for true bacon lovers! Packed with crispy bacon, melty cheese, and bold spices all wrapped in a soft, toasted bun, this delicious delight delivers the perfect balance of smoky, savory, and satisfying in every bite. Get ready for a blissful bacon experience like no other! 🥓🔥',
        image: AppAssets.desert,
        rating: 4.3),
  ];
}
