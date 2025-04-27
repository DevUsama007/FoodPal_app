import 'package:foodpal/app/res/assets/image_assets.dart';

class MyOrdersModel {
  final String title;
  final String image;

  final String date;
  final int items;
  final double amount;
  final int orderNo;

  MyOrdersModel(
      {required this.title,
      required this.image,
      required this.date,
      required this.items,
      required this.amount,
      required this.orderNo});

  static List<MyOrdersModel> allOrdersList = [
    MyOrdersModel(
        title: 'Spice Haven Meat',
        image: AppAssets.meat,
        date: '15 March 2025',
        items: 5,
        amount: 10.24,
        orderNo: 42111),
    MyOrdersModel(
        title: 'Golden Glaze Delight',
        image: AppAssets.desert,
        date: '23 March 2025',
        items: 5,
        amount: 15.4,
        orderNo: 12321),
    MyOrdersModel(
        title: 'Arctic Frost Quencher',
        image: AppAssets.drink,
        date: '23 Jan 2025',
        items: 5,
        amount: 05.24,
        orderNo: 24331),
    MyOrdersModel(
        title: 'Bacon Bliss Bombshell',
        image: AppAssets.burger,
        date: '15 May 2025',
        items: 5,
        amount: 12.34,
        orderNo: 11231),
    MyOrdersModel(
        title: 'Mozzarella Marvel Pizza',
        image: AppAssets.piza,
        date: '15 March 2025',
        items: 5,
        amount: 21.32,
        orderNo: 12421),
  ];
}
