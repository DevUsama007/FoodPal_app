import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class CustomeBtn1 extends StatefulWidget {
  String btnText;
  VoidCallback onTap;
  CustomeBtn1({super.key, required this.btnText, required this.onTap});

  @override
  State<CustomeBtn1> createState() => _CustomeBtn1State();
}

class _CustomeBtn1State extends State<CustomeBtn1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: Get.width * 0.9,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.black),
        child: Center(
          child: Text(
            widget.btnText.toString(),
            style: AppTextStyles.customText(color: Colors.white, fontSize: 12),
          ),
        ),
      ).paddingSymmetric(vertical: 10),
    );
  }
}
