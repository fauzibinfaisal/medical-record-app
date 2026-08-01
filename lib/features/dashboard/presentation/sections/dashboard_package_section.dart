import 'package:flutter/material.dart';

import '../../../../shared/widgets/section_header.dart';
import '../widgets/package_card.dart';

class DashboardPackageSection extends StatelessWidget {
  const DashboardPackageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: SectionHeader(title: 'Paket Pemeriksaan', onTap: () {}),
        ),

        SliverList.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return PackageCard(
              image: 'lib/assets/images/package-${index + 1}.png',
              title: index == 0
                  ? 'Paket Pemeriksaan Diabetes'
                  : 'Paket Pemeriksaan Jantung',
              description: index == 0
                  ? 'Pemeriksaan lengkap untuk deteksi dini diabetes.'
                  : 'Pemeriksaan lengkap kesehatan jantung.',
              price: index == 0 ? 'Rp 750.000' : 'Rp 1.250.000',
            );
          },
        ),
      ],
    );
  }
}
