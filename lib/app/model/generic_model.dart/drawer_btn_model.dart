import 'package:flutter/material.dart';

class DrawerButtonModel {
  final String title;
  final IconData icon;

  DrawerButtonModel({
    required this.title,
    required this.icon,
  });

  static List<DrawerButtonModel> allOffersList = [
    DrawerButtonModel(title: 'Payment Methods', icon: Icons.wallet),
    DrawerButtonModel(
        title: 'Rewards and Offers', icon: Icons.card_giftcard_rounded),
    DrawerButtonModel(title: 'Order', icon: Icons.wallet),
    DrawerButtonModel(title: 'Settings', icon: Icons.settings_outlined),
    DrawerButtonModel(title: 'Account', icon: Icons.person_2_outlined),
  ];
}
