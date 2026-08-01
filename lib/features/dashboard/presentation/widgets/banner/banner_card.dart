import 'package:flutter/material.dart';

import '../../../../../shared/widgets/app_card.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    this.onPressed,
  });

  final String title;

  final String description;

  final String image;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 180,
        child: AppCard(
          borderRadius: 20,
          padding: EdgeInsets.zero,
          backgroundColor: const Color(0xFFEAF5FF),
          child: Stack(
            children: [
              Positioned(
                left: 24,
                top: 26,
                child: SizedBox(
                  width: 185,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF002060),
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF597393),
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 18),

                      SizedBox(
                        width: 120,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: onPressed,
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFF0B2C6B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Selengkapnya',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                right: 0,
                bottom: 0,
                top: 0,
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
