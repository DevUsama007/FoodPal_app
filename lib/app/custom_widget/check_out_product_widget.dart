import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class CheckOutProductWidget extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  String price;
  CheckOutProductWidget(
      {super.key,
      required this.image,
      required this.price,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(image),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width * 0.65,
                    child: Text(
                      '${title} | ${subtitle}',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.customText(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ).paddingOnly(top: 20, left: 5),
                  Text(
                    "price ${price}",
                    style:
                        AppTextStyles.customText(fontWeight: FontWeight.w700),
                  ).paddingOnly(top: 10, left: 5),
                  Text(
                    'Payment on Delivery',
                    style: AppTextStyles.customText(
                        color: AppColor.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ).paddingOnly(left: 5),
                ],
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Standard Delivery",
                  style: AppTextStyles.customText(
                      fontSize: 12, fontWeight: FontWeight.w800)),
              Text("\$2.0",
                  style: AppTextStyles.customText(
                      fontSize: 12, fontWeight: FontWeight.w500))
            ],
          ).marginSymmetric(horizontal: 20, vertical: 10)
        ],
      ),
    );
  }
}
