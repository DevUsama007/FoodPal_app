import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class RestaurantNearbyDetailWidget extends StatelessWidget {
  String imagepath;
  String title;
  String locaiton;
  double likes;

  RestaurantNearbyDetailWidget(
      {super.key,
      required this.imagepath,
      required this.likes,
      required this.locaiton,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: Get.width,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 140,
                  height: 100,
                  clipBehavior: Clip.antiAlias, // This enables clipping
                  child: Image.asset(
                    imagepath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 160,
                  margin: EdgeInsets.only(
                      top: 10, left: 10), // Constrain the parent container
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ).paddingOnly(bottom: 5),
                      Text(
                        "The detail about the restaurant is goes here",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey),
                      ).paddingOnly(bottom: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: AppColor.black,
                          ).marginOnly(right: 5),
                          Text(
                            locaiton,
                            style: AppTextStyles.customTextGrey12(),
                          ).marginOnly(right: 5),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: AppColor.black,
                          ).marginOnly(right: 5),
                          Text(
                            "${likes}k",
                            style: AppTextStyles.customTextGrey12(),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ).marginSymmetric(horizontal: 10))
        .paddingSymmetric(horizontal: 10, vertical: 5);
  }
}
