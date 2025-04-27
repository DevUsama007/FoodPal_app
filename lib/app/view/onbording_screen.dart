import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodpal/app/custom_widget/continue_btn.dart';
import 'package:foodpal/app/custom_widget/custom_btn1.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:get/get.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            AppAssets.image4,
            width: 150,
            height: 150,
          ).paddingOnly(bottom: 60),
          Text(
            'onboarding_page_heading'.tr,
            style: AppTextStyles.customTextbold12(),
          ),
          Text(
            'onboarding_page_subheading'.tr,
            style: AppTextStyles.customTextGrey12(),
          ).paddingOnly(bottom: 10),
          ContinueBtn(
            path: AppAssets.googleLogo,
            text: 'onboarding_page_google_btn'.tr,
            ontap: () {},
          ).paddingOnly(bottom: 10),
          ContinueBtn(
            path: AppAssets.appleLogo,
            text: 'onboarding_page_apple_btn'.tr,
            ontap: () {},
          ).paddingOnly(bottom: 10),
          CustomeBtn1(
            btnText: "onboarding_btn_one".tr,
            onTap: () => Get.toNamed(RouteName.loginScreen),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('onboarding_page_signup_btn'.tr,
                  style: AppTextStyles.customText()),
              SizedBox(
                width: 4,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(RouteName.registerScreen);
                  },
                  child: Text(
                    'sign_up_text'.tr,
                    style:
                        AppTextStyles.customText(fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ],
      ).paddingOnly(bottom: 70),
    );
  }
}
