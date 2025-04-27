import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class BestSellersWidget extends StatefulWidget {
  String title;
  String image;
  String duration;
  bool isliked;
  double likes;
  String price;
  String offPercantage;
  BestSellersWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.duration,
      required this.isliked,
      required this.likes,
      required this.offPercantage,
      required this.price});

  @override
  State<BestSellersWidget> createState() => _BestSellersWidgetState();
}

class _BestSellersWidgetState extends State<BestSellersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.44,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width * 0.44,
            height: 130,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Positioned(
                    right: 10, top: 10, child: 
                    
                    widget.isliked?Icon(Icons.favorite_outlined,color: Colors.red,):
                    Icon(Icons.favorite_border)),
                Positioned(
                    top: 10,
                    right: 20,
                    child: Container(
                        width: 120,
                        height: 120,
                        child: Image.asset(widget.image)))
              ],
            ),
          ),
          Container(
            width: Get.width * 0.4,
            child: Text(
              widget.title,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.customText(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.access_time_rounded,
                size: 18,
                color: AppColor.lightGrey,
              ),
              Text(
                widget.duration,
                style: AppTextStyles.customTextGrey12(),
              ),
              Text(
                "|",
                style: AppTextStyles.customText(
                    color: AppColor.lightGrey, fontSize: 18),
              ),
              Icon(
                Icons.star_border_rounded,
                size: 18,
                color: AppColor.lightGrey,
              ),
              Text(
                "${widget.likes}k",
                style: AppTextStyles.customTextGrey12(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                widget.price.toString(),
                style: AppTextStyles.customText(
                    fontWeight: FontWeight.w700, fontSize: 15),
              ).paddingOnly(right: 5),
              Text(
                '${widget.offPercantage}off',
                style: AppTextStyles.customTextGrey10(),
              )
            ],
          )
        ],
      ),
    );
  }
}
