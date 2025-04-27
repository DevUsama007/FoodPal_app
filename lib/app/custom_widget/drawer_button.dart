import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';

class CustomDrawerBtn extends StatelessWidget {
  IconData iconName;
  String title;
  VoidCallback ontap;
  CustomDrawerBtn(
      {super.key,
      required this.iconName,
      required this.ontap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Icon(
            iconName,
            size: 24,
            color: AppColor.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: AppTextStyles.customText(
                fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
