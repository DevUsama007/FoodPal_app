import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodpal/app/custom_widget/custom_btn1.dart';
import 'package:foodpal/app/custom_widget/text_field_widget.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/res/routes/routes.dart';
import 'package:foodpal/app/res/routes/routes_name.dart';
import 'package:foodpal/app/view/register_screen.dart';
import 'package:foodpal/app/view_model/login_screen_controler.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginScreenControler controler = Get.put(LoginScreenControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 240,
              ),
              SvgPicture.asset(
                AppAssets.image4,
                width: 150,
                height: 150,
              ).paddingOnly(bottom: 80),
              Text(
                'onboarding_page_heading'.tr,
                style: AppTextStyles.customTextbold12(),
              ),
              Text(
                'onboarding_page_subheading'.tr,
                style: AppTextStyles.customTextGrey12(),
              ).paddingOnly(bottom: 10),
              CustomTextField(
                  width: Get.width * 0.9,
                  height: 50,
                  controller: controler.emailController,
                  prefixIcon: Icons.phone,
                  backgroundColor: Colors.white,
                  hintText: "login_text_field_email".tr),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                      width: Get.width * 0.9,
                      height: 50,
                      controller: controler.passwordController,
                      prefixIcon: Icons.password,
                      backgroundColor: Colors.white,
                      hintText: "login_text_field_password".tr)
                  .paddingOnly(bottom: 10),
              CustomeBtn1(
                btnText: "login_btn_two".tr,
                onTap: () => controler.validation(context),
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
                        Get.offNamed(RouteName.registerScreen);
                      },
                      child: Text(
                        'sign_up_text'.tr,
                        style: AppTextStyles.customText(
                            fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ).paddingOnly(bottom: 40),
        ),
      ),
    );
  }
}
