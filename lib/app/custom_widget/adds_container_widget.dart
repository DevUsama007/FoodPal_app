import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

import 'package:dotted_border/dotted_border.dart';

class AddsContainerWidget extends StatelessWidget {
  String title;
  String subtitle;
  String code;
  String imagePath;
  bool off;
  String offprice;
  AddsContainerWidget(
      {super.key,
      required this.off,
      required this.title,
      required this.subtitle,
      required this.code,
      required this.offprice,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Stack(
          children: [
            Positioned(
                right: -55,
                bottom: -65,
                child: Image.asset(
                  imagePath,
                  width: 200,
                  height: 200,
                )),
            off
                ? Positioned(
                    right: 20,
                    top: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              offprice,
                              style:
                                  AppTextStyles.customText(color: Colors.white),
                            ),
                          )),
                    ))
                : Container(),
            Positioned(
                left: 25,
                child: Container(
                  width: Get.width * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.customText(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ).paddingOnly(top: 10),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.customText(
                            color: AppColor.grey, fontSize: 12),
                      ).paddingOnly(bottom: 10),
                      DottedBorder(
                        dashPattern: [6, 3],
                        strokeWidth: 2,
                        color: AppColor.grey,
                        child: Container(
                          width: 100,
                          height: 35,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.grey)),
                          child: Center(
                              child: Text(
                            code,
                            style: AppTextStyles.customText(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
