import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class SeeAllWidget extends StatefulWidget {
  String title;
  VoidCallback ontap;
  String all;
  SeeAllWidget({super.key, required this.title, required this.ontap,required this.all});

  @override
  State<SeeAllWidget> createState() => _SeeAllWidgetState();
}

class _SeeAllWidgetState extends State<SeeAllWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: AppTextStyles.customText(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: widget.ontap,
          child: Text(
            widget.all,
            style: AppTextStyles.customText(
                fontWeight: FontWeight.w500, fontSize: 14),
          ),
        )
      ],
    ).paddingOnly(bottom: 10);
  }
}
