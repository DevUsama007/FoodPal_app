import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatefulWidget {
  String path;
  double? widht;
  double? height;
   SvgImage({super.key,required this.path,required this.widht, required this.height});

  @override
  State<SvgImage> createState() => _SvgImageState();
}

class _SvgImageState extends State<SvgImage> {
  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(widget.path.toString(),width: widget.widht,height: widget.height,);
  }
}