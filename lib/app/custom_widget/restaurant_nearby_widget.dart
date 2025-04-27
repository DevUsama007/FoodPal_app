import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class RestaurantNearbyWidget extends StatelessWidget {
  String imagepath;
  String offPrice;
  String price;
  String title;
  String location;
  double likes;
   RestaurantNearbyWidget({super.key,required this.imagepath,required this.likes,required this.location,required this.offPrice,required this.price, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.55,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width * 0.5,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagepath))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(offPrice.toString(),
                    style: AppTextStyles.customText(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700)),
                Container(
                  width: 110,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(price,
                          style: AppTextStyles.customText(
                              fontSize: 12, fontWeight: FontWeight.w700))),
                )
              ],
            ),
          ).marginOnly(top: 10, bottom: 5),
          Container(
            width: Get.width * 0.5,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.customText(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 18,
                color: AppColor.lightGrey,
              ),
              Text(
                location,
                style: AppTextStyles.customTextGrey12(),
              ),
              Icon(
                Icons.star_border_rounded,
                size: 18,
                color: AppColor.lightGrey,
              ),
              Text(
                "${likes}k",
                style: AppTextStyles.customTextGrey12(),
              )
            ],
          ).marginOnly(left: 5),
        ],
      ),
    );
  }
}
