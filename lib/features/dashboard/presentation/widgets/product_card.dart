import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.category,
    this.onTap,
  });

  final String image;
  final String title;
  final String price;
  final String category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.zero,
      borderRadius: 18,
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            child: AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAF5FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      category,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0B72B9),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF002060),
                      height: 1.3,
                    ),
                  ),

                  const Spacer(),

                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF0B2C6B),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
