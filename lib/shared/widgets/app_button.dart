import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.height = 58,
    this.backgroundColor = const Color(0xFF0B2C6B),
    this.textColor = Colors.white,
    this.icon,
  });

  final String text;

  final VoidCallback? onPressed;

  final bool isLoading;

  final double height;

  final Color backgroundColor;

  final Color textColor;

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (icon != null) Positioned(right: 20, child: icon!),
                ],
              ),
      ),
    );
  }
}
