import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodpal/app/custom_widget/intro_screen_container.dart';
import 'package:foodpal/app/custom_widget/language_dropdown.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:get/get.dart';

class IntroductionScreen1 extends StatefulWidget {
  const IntroductionScreen1({super.key});

  @override
  State<IntroductionScreen1> createState() => _IntroductionScreen1State();
}

class _IntroductionScreen1State extends State<IntroductionScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [LanguageDropdown()],
        ),
        backgroundColor: AppColor.white,
        body: IntroScreenContainer(
          heading: 'intro_screen_one_heading'.tr,
          subheading: 'intro_screen_one_subheading'.tr,
          btnText: 'intro_screen_one_btn'.tr,
          imagePath: AppAssets.image1,
          onTap: () => Get.offNamed(RouteName.introduction_screen2),
        ));
  }
}
