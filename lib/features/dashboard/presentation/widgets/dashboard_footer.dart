import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_card.dart';

class DashboardFooter extends StatelessWidget {
  const DashboardFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: AppCard(
        backgroundColor: const Color(0xFF0B72B9),
        borderRadius: 20,
        padding: const EdgeInsets.all(24),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingin mendapatkan\ninformasi terbaru?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w800,
                height: 1.3,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Aktifkan notifikasi agar tidak ketinggalan promo dan informasi kesehatan terbaru.',
              style: TextStyle(color: Colors.white70, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
