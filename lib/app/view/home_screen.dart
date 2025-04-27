import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        child: Center(child: Text('HomeScreen')),
      ),
    );
  }
}
