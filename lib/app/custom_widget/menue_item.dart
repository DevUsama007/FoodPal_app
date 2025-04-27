import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';
import 'package:foodpal/app/res/assets/image_assets.dart';

class MenueItem extends StatefulWidget {
  String imagePath;
  String title;
  MenueItem({super.key, required this.imagePath, required this.title});

  @override
  State<MenueItem> createState() => _MenueItemState();
}

class _MenueItemState extends State<MenueItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 60,
              height: 60,
              child: Image.asset(
                widget.imagePath.toString(),
                fit: BoxFit.contain,
              )),
          Text(
            widget.title.toString(),
            overflow: TextOverflow.fade,
            style: AppTextStyles.customText( 
                fontSize: 12, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
