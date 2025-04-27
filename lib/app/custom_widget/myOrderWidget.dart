import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class Myorderwidget extends StatelessWidget {
  String image;
  String title;
  String date;
  int items;
  double amount;
  int orderNo;

  Myorderwidget(
      {super.key,
      required this.title,
      required this.image,
      required this.date,
      required this.items,
      required this.amount,
      required this.orderNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
              width: 90,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.homebackgroundColor),
              child: Image.asset(
                image,
              ).marginSymmetric(vertical: 10)),
          Container(
            width: 125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppTextStyles.customTextbold12(),
                ),
                Row(
                  children: [
                    Text(
                      "${date.toString()}  ${items} Items",
                      style: AppTextStyles.customText(
                          fontSize: 10, color: AppColor.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Deliverd',
                      style: AppTextStyles.customTextGrey12(),
                    ).paddingOnly(right: 5),
                    Icon(
                      Icons.delivery_dining_rounded,
                      color: AppColor.grey,
                    )
                  ],
                )
              ],
            ).paddingOnly(top: 18, left: 5),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("\$${amount}",
                  style: AppTextStyles.customText(
                      fontSize: 10, color: AppColor.grey)),
              Text('OrderId#${orderNo}',
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.customText(
                      fontSize: 10, color: AppColor.grey))
            ],
          ).paddingSymmetric(vertical: 20)
        ],
      ).paddingSymmetric(horizontal: 10),
    );
  }
}
