import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
    this.iconColor = const Color(0xFF0B2C6B),
    this.textColor = const Color(0xFF002060),
  });

  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            children: [
              Icon(icon, color: iconColor, size: 24),

              const SizedBox(width: 18),

              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              trailing ??
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFFB6BDC8),
                    size: 22,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
