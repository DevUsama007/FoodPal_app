import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_fonts/fonts.dart';

abstract class AppTextStyles {
  AppTextStyles._();
  static TextStyle customText({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0,
    double fontSize = 12,
    double? height,
  }) {
    return TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
        fontFamily: AppFonts.montserrat);
  }

  static TextStyle customTextbold12() {
    return TextStyle(
        color: AppColor.black,
        fontFamily: AppFonts.montserrat,
        fontSize: 16,
        fontWeight: FontWeight.bold);
  }

  static TextStyle customTextGrey12() {
    return TextStyle(
      color: AppColor.grey,
      fontFamily: AppFonts.montserrat,
      fontSize: 13,
    );
  }

  static TextStyle customTextGrey10() {
    return TextStyle(
      color: AppColor.grey,
      fontFamily: AppFonts.montserrat,
      fontSize: 10,
    );
  }
}
