import 'package:foodpal/app/res/assets/image_assets.dart';

class NotificationModel {
  final String title;
  final String image;
  final String validDate;
  final String timeAgo;
  final bool newNotifi;

  NotificationModel({
    required this.title,
    required this.image,
    required this.validDate,
    required this.timeAgo,
    required this.newNotifi,
  });

  static List<NotificationModel> allOffersList = [
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Buy 1 get 1 free',
      validDate: 'valid till 20 May',
      timeAgo: '20min ago',
      newNotifi: true,
    ),
    NotificationModel(
      image: AppAssets.devUsama,
      title: 'Sale 60% today',
      validDate: 'valid till 30 March',
      timeAgo: '10min ago',
      newNotifi: true,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'ONLY TODAY 20%',
      validDate: 'valid till 3 April',
      timeAgo: '1 hour ago',
      newNotifi: true,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Sale 60% today',
      validDate: 'valid till 4 December',
      timeAgo: '5 hour ago',
      newNotifi: true,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Only Today 30% off',
      validDate: 'valid till 23 April',
      timeAgo: '2 days ago',
      newNotifi: false,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Buy 1 get 1 free',
      validDate: 'valid till 3 August',
      timeAgo: '2 days ago',
      newNotifi: false,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Only Today 40% off',
      validDate: 'valid till 20 March',
      timeAgo: '2 days ago',
      newNotifi: false,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Only Today 50% off',
      validDate: 'valid till 30 May',
      timeAgo: '3 days ago',
      newNotifi: false,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Only Today 3% off',
      validDate: 'valid till 12 June',
      timeAgo: '5 days ago',
      newNotifi: false,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Buy 1 get 1 free',
      validDate: 'valid till 30 August',
      timeAgo: '6 days ago',
      newNotifi: false,
    ),
    NotificationModel(
      image: AppAssets.devUsamaP,
      title: 'Only Today 60% off',
      validDate: 'valid till 20 April',
      timeAgo: '7 days ago',
      newNotifi: true,
    ),
  ];
}
