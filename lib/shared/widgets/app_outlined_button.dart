import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.height = 50,
  });

  final String text;

  final VoidCallback? onPressed;

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF002060)),
          foregroundColor: const Color(0xFF002060),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
