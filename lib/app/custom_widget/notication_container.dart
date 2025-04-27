import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class NotificationContainerWidget extends StatelessWidget {
  String imagePath;
  String title;
  String validDate;
  String time;
  NotificationContainerWidget(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.validDate,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      width: Get.width * 0.9,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath).paddingSymmetric(horizontal: 5, vertical: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.customText(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ).paddingOnly(bottom: 5),
              Text(
                validDate,
                style: AppTextStyles.customText(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey),
              )
            ],
          ).paddingOnly(top: 13),
          // Text(
          //   time,
          //   style: AppTextStyles.customTextGrey12(),
          // ).paddingOnly(left: 40, top: 18)
        ],
      ),
    ).marginOnly(bottom: 10);
  }
}
