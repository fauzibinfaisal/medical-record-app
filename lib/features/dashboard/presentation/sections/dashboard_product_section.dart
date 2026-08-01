import 'package:flutter/material.dart';

import '../../../../shared/widgets/section_header.dart';
import '../widgets/product_card.dart';

class DashboardProductSection extends StatelessWidget {
  const DashboardProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: SectionHeader(title: 'Produk Pilihan', onTap: () {}),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductCard(
                image: 'lib/assets/images/img-product.png',
                title: index == 0 ? 'Suntik Steril' : 'Rapid Test',
                category: 'Alat Kesehatan',
                price: index == 0 ? 'Rp 120.000' : 'Rp 250.000',
              );
            }, childCount: 2),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: .67,
            ),
          ),
        ),
      ],
    );
  }
}
