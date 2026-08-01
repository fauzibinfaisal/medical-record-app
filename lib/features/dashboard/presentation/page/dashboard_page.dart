import 'package:flutter/material.dart';

import '../widgets/dashboard_app_bar.dart';
import '../widgets/dashboard_category_tab.dart';
import '../widgets/dashboard_drawer.dart';
import '../widgets/dashboard_footer.dart';
import '../widgets/dashboard_search.dart';
import '../sections/dashboard_banner_section.dart';
import '../sections/dashboard_package_section.dart';
import '../sections/dashboard_product_section.dart';
import '../sections/dashboard_service_section.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      drawer: const DashboardDrawer(),

      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),

          slivers: [
            const SliverToBoxAdapter(child: DashboardAppBar()),

            const DashboardBannerSection(),

            const DashboardServiceSection(),

            SliverToBoxAdapter(
              child: DashboardSearch(onTap: () {}, onFilterTap: () {}),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 18)),

            SliverToBoxAdapter(
              child: DashboardCategoryTab(onChanged: (index) {}),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 24)),

            const DashboardProductSection(),

            const DashboardPackageSection(),

            const SliverToBoxAdapter(child: SizedBox(height: 24)),

            const SliverToBoxAdapter(child: DashboardFooter()),

            const SliverToBoxAdapter(child: SizedBox(height: 40)),
          ],
        ),
      ),
    );
  }
}
