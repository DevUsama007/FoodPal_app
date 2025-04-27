import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';
import 'package:get/get.dart';

class ContinueBtn extends StatefulWidget {
  String path;
  String text;
  VoidCallback ontap;
  ContinueBtn(
      {super.key, required this.path, required this.text, required this.ontap});

  @override
  State<ContinueBtn> createState() => _ContinueBtnState();
}

class _ContinueBtnState extends State<ContinueBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        width: Get.width * 0.9,
        height: 30,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.path.toString(),
              width: 15,
              height: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.text,
              style: AppTextStyles.customText(color: AppColor.grey),
            )
          ],
        ),
      ),
    );
  }
}
