import 'package:flutter/material.dart';

import '../widgets/dashboard_banner.dart';

class DashboardBannerSection extends StatelessWidget {
  const DashboardBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: DashboardBanner());
  }
}
