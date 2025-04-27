import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/intro_screen_container.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:get/get.dart';

class IntroductionScreen3 extends StatefulWidget {
  const IntroductionScreen3({super.key});

  @override
  State<IntroductionScreen3> createState() => _IntroductionScreen3State();
}

class _IntroductionScreen3State extends State<IntroductionScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: IntroScreenContainer(
          heading: 'intro_screen_three_heading'.tr,
          subheading: 'intro_screen_three_subheading'.tr,
          btnText: 'intro_screen_three_btn'.tr,
          imagePath: AppAssets.image3,
          onTap: () => Get.toNamed(RouteName.onbordingScreen),
        ));
  }
}
