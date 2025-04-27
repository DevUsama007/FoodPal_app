import 'package:foodpal/app/res/assets/image_assets.dart';

class AddsOffers {
  final String title;
  final String subtitle;
  final String image;
  final String code;
  final String offprice;
  AddsOffers({
    required this.offprice,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.code,
  });

  static List<AddsOffers> allOffersList = [
    AddsOffers(
        offprice: '20%\noff',
        title: 'Family Feast',
        image: AppAssets.meat,
        subtitle: 'Special price on our family meal bundle!',
        code: 'J15G250'),
    AddsOffers(
        offprice: '40%\noff',
        title: 'Breakfast Delights',
        image: AppAssets.burger,
        subtitle: 'Special price on our family meal bundle!',
        code: 'J45G270'),
    AddsOffers(
        offprice: '10%\noff',
        title: 'Healthy Choices',
        image: AppAssets.fish,
        subtitle: 'Special price on our family meal bundle!',
        code: 'J33G560'),
    AddsOffers(
        offprice: '45%\noff',
        title: 'Desert Bronanza',
        image: AppAssets.desert,
        subtitle: 'Special price on our family meal bundle!',
        code: 'J33G432'),
    AddsOffers(
        offprice: '21%\noff',
        title: 'Family Feast',
        image: AppAssets.piza,
        subtitle: 'Special price on our family meal bundle!',
        code: 'J53G098'),
  ];
}
