import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_card.dart';

class DashboardSearch extends StatelessWidget {
  const DashboardSearch({super.key, this.onTap, this.onFilterTap});

  final VoidCallback? onTap;

  final VoidCallback? onFilterTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          AppCard(
            padding: EdgeInsets.zero,
            borderRadius: 16,
            onTap: onFilterTap,
            child: Container(
              width: 56,
              height: 56,
              alignment: Alignment.center,
              child: const Icon(
                Icons.tune_rounded,
                color: Color(0xFF0B2C6B),
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 14),

          Expanded(
            child: AppCard(
              padding: EdgeInsets.zero,
              borderRadius: 16,
              onTap: onTap,
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF597393), size: 22),

                    SizedBox(width: 14),

                    Expanded(
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFF597393),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
