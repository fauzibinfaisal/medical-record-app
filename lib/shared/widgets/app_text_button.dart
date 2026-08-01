import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color = const Color(0xFF002060),
  });

  final String text;

  final VoidCallback? onPressed;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.w700),
      ),
    );
  }
}
