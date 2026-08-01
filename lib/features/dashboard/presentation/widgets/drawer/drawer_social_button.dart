import 'package:flutter/material.dart';

class DrawerSocialButton extends StatelessWidget {
  const DrawerSocialButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F8FC),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(icon, color: const Color(0xFF002060), size: 22),
        ),
      ),
    );
  }
}
