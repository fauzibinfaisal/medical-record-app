import 'package:flutter/material.dart';
import '../../../../../shared/widgets/app_card.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key, this.onEditProfile});

  final VoidCallback? onEditProfile;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(20),
      borderRadius: 20,
      child: Column(
        children: [
          Container(
            width: 82,
            height: 82,
            decoration: const BoxDecoration(
              color: Color(0xFFEAF4FF),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person, size: 42, color: Color(0xFF0B2C6B)),
          ),

          const SizedBox(height: 18),

          const Text(
            'Angga Praja',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF002060),
            ),
          ),

          const SizedBox(height: 6),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F4FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Membership BBLK',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0B72B9),
              ),
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: double.infinity,
            height: 46,
            child: OutlinedButton(
              onPressed: onEditProfile,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF002060),
                side: const BorderSide(color: Color(0xFF002060)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Profile Saya',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
