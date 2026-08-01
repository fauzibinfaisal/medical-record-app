import 'package:flutter/material.dart';

import 'banner/banner_card.dart';
import 'banner/banner_indicator.dart';

class DashboardBanner extends StatefulWidget {
  const DashboardBanner({super.key});

  @override
  State<DashboardBanner> createState() => _DashboardBannerState();
}

class _DashboardBannerState extends State<DashboardBanner> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 185,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: const [
              BannerCard(
                title: 'Solusi,\nKesehatan Anda 1',
                description:
                    'Update 1 informasi seputar kesehatan semua bisa disini !',
                image: 'lib/assets/images/img-calender-banner.png',
              ),

              BannerCard(
                title: 'Solusi,\nKesehatan Anda 2',
                description:
                    'Update 2 informasi seputar kesehatan semua bisa disini !',
                image: 'lib/assets/images/img-vaccine-banner.png',
              ),

              BannerCard(
                title: 'Solusi,\nKesehatan Anda',
                description:
                    'Update 3 informasi seputar kesehatan semua bisa disini !',
                image: 'lib/assets/images/img-zoom-banner.png',
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        BannerIndicator(currentIndex: _currentIndex, itemCount: 3),
      ],
    );
  }
}
