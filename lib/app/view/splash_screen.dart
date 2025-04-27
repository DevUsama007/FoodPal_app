import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/view/introduction_screens/introduction_screen1.dart';
import 'package:foodpal/app/view_model/splash_screen_controler.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(
    SplashScreenControler(),
  );
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(RouteName.introduction_screen1);
      print("object time completed");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.white),
      child: SvgPicture.asset(
        AppAssets.foodpal,
        height: 50,
        width: 50,
        // (Optional) Change SVG color
      ).marginSymmetric(horizontal: 80, vertical: 80),
    ).paddingOnly(bottom: 10);
  }
}
