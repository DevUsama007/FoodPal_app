import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/check_out_product_widget.dart';
import 'package:foodpal/app/custom_widget/custom_btn1.dart';
import 'package:foodpal/app/custom_widget/custome_button.dart';
import 'package:foodpal/app/custom_widget/text_field_widget.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/utils/notification.dart';
import 'package:get/get.dart';

class CheckOutOrder extends StatefulWidget {
  String image;
  String title;
  String subtitle;
  String price;
  CheckOutOrder(
      {super.key,
      required this.image,
      required this.price,
      required this.subtitle,
      required this.title});

  @override
  State<CheckOutOrder> createState() => _CheckOutOrderState();
}

class _CheckOutOrderState extends State<CheckOutOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Checkout",
            style: AppTextStyles.customText(
                fontSize: 16, fontWeight: FontWeight.bold),
          ).paddingOnly(top: 10, left: 10),
          CheckOutProductWidget(
                  image: widget.image,
                  price: widget.price,
                  subtitle: widget.subtitle,
                  title: widget.title)
              .paddingOnly(top: 30),
          Text(
            "Address",
            style: AppTextStyles.customText(
                fontSize: 16, fontWeight: FontWeight.bold),
          ).paddingOnly(top: 10, bottom: 10, left: 10),
          CustomTextField(
              prefixIcon: Icons.home,
              lines: 2,
              backgroundColor: AppColor.white,
              hintText: "Add Your Address"),
          Container(
            width: Get.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Buy Summery",
                  style: AppTextStyles.customText(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                BuySummary(tital: 'Sub Total', price: widget.price),
                BuySummary(tital: 'discount', price: '\$0.0'),
                BuySummary(tital: 'Delivery Fee', price: '\$0.0'),
                Container(
                    decoration:
                        BoxDecoration(color: AppColor.homebackgroundColor),
                    child: BuySummary(tital: 'Total Cost', price: widget.price)
                        .paddingSymmetric(horizontal: 10)),
              ],
            ).paddingSymmetric(horizontal: 20, vertical: 20),
          ).paddingOnly(top: 20, bottom: 20),
          CustomeBtn1(
            btnText: 'Order',
            onTap: () {
              CustomNotification.showSuccessNotification(
                  context: context,
                  title: 'Success',
                  subtitle: 'Your Order Will Be Delivered shortly');
              Get.back();
              Get.back();
            },
          ),
        ],
      ),
    ).paddingSymmetric(vertical: 20, horizontal: 10);
  }
}

class BuySummary extends StatelessWidget {
  String tital;
  String price;
  BuySummary({super.key, required this.tital, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tital,
          style: AppTextStyles.customText(
              color: AppColor.grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Text(
          price,
          style: AppTextStyles.customText(
              fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    ).paddingOnly(top: 10, bottom: 10);
  }
}
