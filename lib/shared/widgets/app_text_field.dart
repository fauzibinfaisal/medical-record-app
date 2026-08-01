import 'package:flutter/material.dart';

import 'app_card.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.enabled = true,
    this.readOnly = false,
    this.onTap,
    this.textInputAction,
    this.maxLines = 1,
  });

  final TextEditingController controller;

  final String hint;

  final TextInputType keyboardType;

  final bool obscureText;

  final Widget? suffixIcon;

  final Widget? prefixIcon;

  final ValueChanged<String>? onChanged;

  final bool enabled;

  final bool readOnly;

  final VoidCallback? onTap;

  final TextInputAction? textInputAction;

  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.zero,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        enabled: enabled,
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChanged,
        textInputAction: textInputAction,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xFF597393),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
