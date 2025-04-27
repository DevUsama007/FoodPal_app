import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/view_model/animated_container_conroler.dart';
import 'package:get/get.dart';

class CustomAnimatedContainer extends StatefulWidget {
  VoidCallback ontap;
  String text;
  CustomAnimatedContainer({super.key, required this.text, required this.ontap});

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  final AnimatedContainerConroler controler =
      Get.put(AnimatedContainerConroler());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Obx(
        () {
          return AnimatedContainer(
            width: Get.width * 0.9,
            height: controler.height.value,
            // color: Colors.white,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Text(
              widget.text.toString(),
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: controler.height.value == 50 ? 2 : 12,
              style: AppTextStyles.customText(
                  fontSize: 12,
                  color: AppColor.black.withOpacity(0.5),
                  fontWeight: FontWeight.w600),
            ),
          );
        },
      ),
    );
  }
}
