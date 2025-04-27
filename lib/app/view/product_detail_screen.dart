import 'package:flutter/material.dart';
import 'package:foodpal/app/custom_widget/animtedContainer.dart';
import 'package:foodpal/app/custom_widget/custome_button.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:foodpal/app/view_model/animated_container_conroler.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatefulWidget {
  String image;
  String title;
  String price;
  double? rating;
  String? subtitle;
  ProductDetailScreen(
      {super.key,
      required this.title,
      this.subtitle,
      required this.image,
      required this.price,
      this.rating});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final AnimatedContainerConroler controler =
      Get.put(AnimatedContainerConroler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomeButton(
                  title: 'Add to Cart',
                  bgColor: AppColor.lightGrey,
                  ontap: () {
                    Get.back();
                  },
                  textColor: Colors.black),
              CustomeButton(
                  title: 'Order',
                  bgColor: Colors.black,
                  ontap: () {
                    Get.back();
                  },
                  textColor: Colors.white),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: Get.width,
              height: 200,
              color: Colors.white,
              child: Image.asset(widget.image).marginSymmetric(vertical: 20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.customText(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('Price: ${widget.price}       Rating: ${widget.rating}',
                        style: AppTextStyles.customText(
                            fontSize: 12, fontWeight: FontWeight.bold))
                    .paddingSymmetric(vertical: 10),
                CustomAnimatedContainer(
                  text: widget.subtitle.toString(),
                  ontap: () {
                    controler.changeHeight();
                  },
                ),
                Text(
                  'Add ones',
                  style: AppTextStyles.customText(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                addOnes()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class addOnes extends StatelessWidget {
  const addOnes({super.key});

  @override
  Widget build(BuildContext context) {
    List list = [AppAssets.desert, AppAssets.meat, AppAssets.drink];
    return Row(
      children: List.generate(
        list.length,
        (index) {
          return Stack(
            children: [
              Positioned(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.homebackgroundColor),
                  child: Image.asset(list[index])
                      .marginSymmetric(horizontal: 5, vertical: 5),
                ),
              ),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )))
            ],
          ).paddingOnly(right: 10, top: 20);
        },
      ),
    );
  }
}
