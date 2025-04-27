import 'package:flutter/material.dart';

class SortingWidget extends StatelessWidget {
  VoidCallback ontap;
   SortingWidget({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: 50,
          height: 50,
          child: Icon(Icons.sort)),
    );
  }
}