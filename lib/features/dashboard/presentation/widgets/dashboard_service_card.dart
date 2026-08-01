import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_card.dart';

class DashboardServiceCard extends StatelessWidget {
  const DashboardServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.buttonText,
    this.onTap,
    this.imageLeft = false,
  });

  final String title;
  final String subtitle;
  final String image;
  final String buttonText;
  final VoidCallback? onTap;

  /// false = image kanan (Layanan Khusus)
  /// true = image kiri (Track Pemeriksaan)
  final bool imageLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppCard(
        borderRadius: 20,
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: 150,
          child: Row(
            children: imageLeft
                ? [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(image, fit: BoxFit.contain),
                      ),
                    ),
                    Expanded(flex: 5, child: _buildText()),
                  ]
                : [
                    Expanded(flex: 5, child: _buildText()),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(image, fit: BoxFit.contain),
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff002060),
            ),
          ),

          const SizedBox(height: 8),

          Expanded(
            child: Text(
              subtitle,
              style: const TextStyle(fontSize: 12, color: Color(0xff597393)),
            ),
          ),

          InkWell(
            onTap: onTap,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Track',
                  style: TextStyle(
                    color: Color(0xff0B72B9),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Color(0xff0B72B9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
