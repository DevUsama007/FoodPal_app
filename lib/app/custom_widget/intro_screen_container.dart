import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodpal/app/custom_widget/custom_btn1.dart';
import 'package:foodpal/app/custom_widget/svg_image.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class IntroScreenContainer extends StatefulWidget {
  String? heading;
  String? subheading;
  String? btnText;
  String? imagePath;
  VoidCallback onTap;
  IntroScreenContainer(
      {super.key,
      required this.heading,
      required this.subheading,
      required this.btnText,
      required this.imagePath,
      required this.onTap});

  @override
  State<IntroScreenContainer> createState() => _IntroScreenContainerState();
}

class _IntroScreenContainerState extends State<IntroScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // SvgPicture.asset(widget.imagePath.toString())
          SvgImage(
            path: widget.imagePath.toString(),
            widht: 180,
            height: 180,
          ).paddingOnly(bottom: 120),
          Text(
            widget.heading.toString(),
            style: AppTextStyles.customTextbold12(),
          ).paddingOnly(bottom: 5),
          Text(
            widget.subheading.toString(),
            textAlign: TextAlign.center,
            style: AppTextStyles.customTextGrey12(),
          ).paddingOnly(bottom: 20),
          CustomeBtn1(btnText: widget.btnText.toString(), onTap: widget.onTap)
        ],
      ).paddingOnly(bottom: 40),
    ).marginSymmetric(horizontal: 30);
  }
}
