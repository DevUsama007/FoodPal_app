import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/view_model/home_screen_controler.dart';
import 'package:get/get.dart';

class Mycartwidget extends StatefulWidget {
  String title;
  String image;
  String price;
  String offPrice;

  Mycartwidget(
      {super.key,
      required this.image,
      required this.title,
      required this.offPrice,
      required this.price});

  @override
  State<Mycartwidget> createState() => _MycartwidgetState();
}

class _MycartwidgetState extends State<Mycartwidget> {
  final HomeScreenControler controler = Get.put(HomeScreenControler());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: 100,
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
                widget.image,
              ).marginSymmetric(vertical: 10)),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // width: 120,
                  // height: 30,
                  child: Text(
                    widget.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style:
                        AppTextStyles.customText(fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${widget.price.toString()}  ${widget.offPrice}",
                      style: AppTextStyles.customText(
                          fontSize: 10, color: AppColor.grey),
                    ),
                    Obx(
                      () {
                        return Container(
                          width: 60,
                          height: 25,
                          decoration: BoxDecoration(
                              color: AppColor.homebackgroundColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () => controler.incrementCart(),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                              ),
                              Text(controler.cartvalue.value.toString()),
                              InkWell(
                                onTap: () => controler.decrementCart(),
                                child: Icon(
                                  Icons.delete,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ).paddingOnly(left: 40);
                      },
                    )
                  ],
                ).paddingOnly(top: 20),
              ],
            ).paddingOnly(top: 18, left: 10),
          ),
        ],
      ).paddingSymmetric(horizontal: 10),
    );
    ;
  }
}
