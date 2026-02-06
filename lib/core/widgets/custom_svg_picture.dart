import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
    required this.path,
    this.color,
    this.hight,
    this.width,
  });
  final String path;
  final Color? color;
  final double? hight;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      height: hight,
      width: width,
      path,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
