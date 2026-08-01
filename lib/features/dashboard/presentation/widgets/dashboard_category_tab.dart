import 'package:flutter/material.dart';

class DashboardCategoryTab extends StatefulWidget {
  const DashboardCategoryTab({
    super.key,
    this.categories = const [
      'All Product',
      'Layanan Kesehatan',
      'Alat Kesehatan',
    ],
    this.onChanged,
  });

  final List<String> categories;

  final ValueChanged<int>? onChanged;

  @override
  State<DashboardCategoryTab> createState() => _DashboardCategoryTabState();
}

class _DashboardCategoryTabState extends State<DashboardCategoryTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final bool isSelected = selectedIndex == index;

          return InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () {
              setState(() {
                selectedIndex = index;
              });

              widget.onChanged?.call(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF0B2C6B) : Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF0B2C6B)
                      : const Color(0xFFE3EAF3),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                widget.categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xFF597393),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
