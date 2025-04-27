import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/intro_screen_container.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:get/get.dart';

class IntroductionScreen2 extends StatefulWidget {
  const IntroductionScreen2({super.key});

  @override
  State<IntroductionScreen2> createState() => _IntroductionScreen2State();
}

class _IntroductionScreen2State extends State<IntroductionScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: IntroScreenContainer(
          heading: 'intro_screen_two_heading'.tr,
          subheading: 'intro_screen_two_subheading'.tr,
          btnText: 'intro_screen_two_btn'.tr,
          imagePath: AppAssets.image2,
          onTap: () => Get.toNamed(RouteName.introduction_screen3),
        ));
    ;
  }
}
