import 'package:flutter/material.dart';

import '../widgets/dashboard_service_card.dart';

class DashboardServiceSection extends StatelessWidget {
  const DashboardServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        DashboardServiceCard(
          title: 'Layanan Khusus',
          subtitle: 'Tes Covid 19, Cegah Corona Sedini Mungkin',
          image: 'lib/assets/images/img-vaccine-banner.png',
          buttonText: 'Daftar Tes',
        ),

        const SizedBox(height: 18),

        DashboardServiceCard(
          title: 'Track Pemeriksaan',
          subtitle: 'Kamu dapat mengecek progress pemeriksaanmu disini',
          image: 'lib/assets/images/img-zoom-banner.png',
          buttonText: 'Track',
          imageLeft: true,
        ),

        SizedBox(height: 20),
      ]),
    );
  }
}
