import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/continue_btn.dart';
import 'package:foodpal/app/custom_widget/custom_btn1.dart';
import 'package:foodpal/app/custom_widget/svg_image.dart';
import 'package:foodpal/app/custom_widget/text_field_widget.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/view_model/register_scree_contoler.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final contoler = Get.put(RegisterScreeContoler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgImage(
            path: AppAssets.logo,
            widht: 40,
            height: 40,
          ),
          Text(
            'create_acc_text'.tr,
            style: AppTextStyles.customText(
                fontWeight: FontWeight.bold, fontSize: 18),
          ).paddingSymmetric(vertical: 10),
          CustomTextField(
                  width: Get.width * 0.9,
                  height: 40,
                  controller: contoler.phone_controller,
                  prefixIcon: Icons.phone,
                  backgroundColor: Colors.white,
                  hintText: "sign_up_text_field_email".tr)
              .paddingOnly(bottom: 10),
          CustomTextField(
                  width: Get.width * 0.9,
                  height: 40,
                  controller: contoler.email_controller,
                  prefixIcon: Icons.email,
                  backgroundColor: Colors.white,
                  hintText: "sign_up_text_field_email".tr)
              .paddingOnly(bottom: 10),
          CustomTextField(
                  width: Get.width * 0.9,
                  height: 40,
                  controller: contoler.name_controller,
                  prefixIcon: Icons.person,
                  backgroundColor: Colors.white,
                  hintText: "sign_up_text_field_Name".tr)
              .paddingOnly(bottom: 10),
          CustomeBtn1(
            btnText: "sign_up_text".tr,
            onTap: () => contoler.validation(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: Get.width * 0.4, child: Divider()),
              Text(
                "Or",
                style: AppTextStyles.customText(),
              ).paddingSymmetric(horizontal: 5),
              Container(width: Get.width * 0.4, child: Divider()),
            ],
          ).paddingOnly(bottom: 20, top: 10),
          ContinueBtn(
            path: AppAssets.googleLogo,
            text: 'onboarding_page_google_btn'.tr,
            ontap: () {},
          ).paddingOnly(bottom: 15),
          ContinueBtn(
            path: AppAssets.appleLogo,
            text: 'onboarding_page_apple_btn'.tr,
            ontap: () {},
          ).paddingOnly(bottom: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'already_have_account'.tr,
                style: AppTextStyles.customText(),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(RouteName.loginScreen);
                  },
                  child: Text(
                    'login_btn_two'.tr,
                    style:
                        AppTextStyles.customText(fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
