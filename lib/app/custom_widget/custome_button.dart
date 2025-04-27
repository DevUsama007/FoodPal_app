import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class CustomeButton extends StatelessWidget {
  String title;
  Color bgColor;
  Color textColor;
  VoidCallback ontap;
  CustomeButton(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.ontap,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 110,
        height: 50,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title.toString(),
            style: AppTextStyles.customText(
                fontWeight: FontWeight.w500, fontSize: 14, color: textColor),
          ),
        ),
      ),
    );
  }
}
