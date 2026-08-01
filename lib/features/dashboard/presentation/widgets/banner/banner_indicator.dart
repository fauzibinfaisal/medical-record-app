import 'package:flutter/material.dart';

class BannerIndicator extends StatelessWidget {
  const BannerIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  final int currentIndex;

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final bool selected = index == currentIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: selected ? 22 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: selected ? const Color(0xFF0B2C6B) : const Color(0xFFD7E2EF),
            borderRadius: BorderRadius.circular(100),
          ),
        );
      }),
    );
  }
}
