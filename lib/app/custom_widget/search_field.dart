import 'package:flutter/material.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/res/app_text_styles/app_text_styles.dart';

class SearchTextField extends StatefulWidget {
  final Color backgroundColor;
  final IconData? prefixIcon;
  final String hintText;
  final TextEditingController? controller;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;

  const SearchTextField({
    super.key,
    required this.backgroundColor,
    this.prefixIcon,
    required this.hintText,
    this.controller,
    this.width,
    this.height,
    this.contentPadding,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height,
      child: Focus(
        onFocusChange: (focused) {
          setState(() {
            _isFocused = focused;
          });
        },
        child: TextField(
          autofocus: false,
          controller: widget.controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none, // No visible border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none, // No visible border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none, // No visible border
            ),
            filled: true,
            fillColor: _isFocused ? Colors.white : widget.backgroundColor,
            prefixIcon: IconTheme(
              data: IconThemeData(size: 18), // Set your desired size here
              child: Icon(widget.prefixIcon),
            ),
            hintText: widget.hintText,
            hintStyle: AppTextStyles.customText(color: AppColor.grey),
            contentPadding: widget.contentPadding ?? const EdgeInsets.all(12),
          ),
        ),
      ),
    );
  }
}
