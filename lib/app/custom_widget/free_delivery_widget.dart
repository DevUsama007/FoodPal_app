import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodpal/app/custom_widget/custome_button.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class FreeDeliveryWidget extends StatelessWidget {
  final String title;
  const FreeDeliveryWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width * 0.4,
                child: Text(
                  title.toString(),
                  style: AppTextStyles.customText(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ).paddingOnly(bottom: 20),
              CustomeButton(
                  title: 'order_now_btn'.tr,
                  bgColor: Colors.black,
                  ontap: () => debugPrint("Helo"),
                  textColor: Colors.white)
            ],
          ),
          SvgPicture.asset(
            AppAssets.image3,
            width: 120,
            height: 120,
          )
        ],
      ),
    );
  }
}
