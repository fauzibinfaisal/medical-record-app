import 'package:flutter/material.dart';

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({
    super.key,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  });

  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(margin: margin, height: 1, color: const Color(0xFFE9EDF3));
  }
}
