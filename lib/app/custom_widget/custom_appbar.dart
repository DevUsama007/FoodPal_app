import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool centerTitle;
  final Color? backgroundColor;
  final double? elevation;
  final IconThemeData? iconTheme;
  final bool automaticallyImplyLeading;

  const CustomAppbar({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle = false,
    this.backgroundColor,
    this.elevation,
    this.iconTheme,
    this.automaticallyImplyLeading = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title.tr,
        style: AppTextStyles.customText(
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      elevation: elevation,
      iconTheme: iconTheme,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
      shadowColor: Colors.yellow,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
