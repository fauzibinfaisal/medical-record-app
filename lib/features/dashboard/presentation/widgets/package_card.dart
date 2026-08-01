import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_card.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    this.onTap,
  });

  final String image;

  final String title;

  final String description;

  final String price;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: AppCard(
        padding: const EdgeInsets.all(14),
        borderRadius: 20,
        onTap: onTap,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: SizedBox(
                width: 96,
                height: 96,
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF002060),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF597393),
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF0B2C6B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
