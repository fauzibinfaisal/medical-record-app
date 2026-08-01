import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 10),
      child: Row(
        children: [
          Builder(
            builder: (context) {
              return InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const SizedBox(
                  width: 44,
                  height: 44,
                  child: Icon(Icons.menu, size: 28, color: Color(0xFF0B2C6B)),
                ),
              );
            },
          ),

          const Spacer(),

          InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () {},

            child: const SizedBox(
              width: 44,
              height: 44,
              child: Icon(
                Icons.shopping_cart,
                size: 24,
                color: Color(0xFF0B2C6B),
              ),
            ),
          ),

          const SizedBox(width: 8),

          Stack(
            clipBehavior: Clip.none,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {},

                child: const SizedBox(
                  width: 44,
                  height: 44,
                  child: Icon(
                    Icons.notifications,
                    size: 24,
                    color: Color(0xFF0B2C6B),
                  ),
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
