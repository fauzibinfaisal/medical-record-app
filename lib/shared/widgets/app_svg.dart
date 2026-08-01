import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  const AppSvg({
    super.key,
    required this.asset,
    this.width = 24,
    this.height = 24,
    this.color,
  });

  final String asset;

  final double width;

  final double height;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      width: width,
      height: height,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
