import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(20),
    this.margin = EdgeInsets.zero,
    this.borderRadius = 16,
    this.backgroundColor = Colors.white,
    this.onTap,
  });

  final Widget child;

  final EdgeInsetsGeometry padding;

  final EdgeInsetsGeometry margin;

  final double borderRadius;

  final Color backgroundColor;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            blurRadius: 24,
            color: Color(0x11000000),
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: child,
    );

    if (onTap != null) {
      content = InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: content,
      );
    }

    return content;
  }
}
