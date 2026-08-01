import 'package:flutter/material.dart';

import 'drawer/drawer_divider.dart';
import 'drawer/drawer_header.dart';
import 'drawer/drawer_menu_item.dart';
import 'drawer/drawer_social_button.dart';
import '../../../../shared/widgets/app_confirm_dialog.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/storage/shared_preferences_service.dart';
import 'package:go_router/go_router.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.82,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: DrawerHeaderWidget(onEditProfile: () {}),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerMenuItem(
                    icon: Icons.home_outlined,
                    title: 'Beranda',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),

                  DrawerMenuItem(
                    icon: Icons.person_outline,
                    title: 'Profile Saya',
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    icon: Icons.description_outlined,
                    title: 'Riwayat Pemeriksaan',
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    icon: Icons.favorite_border,
                    title: 'Favorite',
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    icon: Icons.settings_outlined,
                    title: 'Pengaturan',
                    onTap: () {},
                  ),

                  const DrawerDivider(),

                  DrawerMenuItem(
                    icon: Icons.help_outline,
                    title: 'FAQ',
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    icon: Icons.privacy_tip_outlined,
                    title: 'Kebijakan Privasi',
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    icon: Icons.article_outlined,
                    title: 'Syarat & Ketentuan',
                    onTap: () {},
                  ),

                  const DrawerDivider(),

                  DrawerMenuItem(
                    icon: Icons.logout,
                    title: 'Logout',
                    trailing: const SizedBox.shrink(),
                    iconColor: Colors.red,
                    textColor: Colors.red,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => AppConfirmDialog(
                          title: 'Logout',
                          message:
                              'Apakah Anda yakin ingin keluar dari aplikasi?',
                          confirmText: 'Logout',
                          cancelText: 'Batal',
                          onConfirm: () async {
                            await sl<SharedPreferencesService>().clearToken();

                            if (context.mounted) {
                              context.go('/login');
                            }
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerSocialButton(icon: Icons.facebook, onTap: _emptyTap),

                  SizedBox(width: 16),

                  DrawerSocialButton(
                    icon: Icons.camera_alt_outlined,
                    onTap: _emptyTap,
                  ),

                  SizedBox(width: 16),

                  DrawerSocialButton(
                    icon: Icons.alternate_email,
                    onTap: _emptyTap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void _emptyTap() {}
}
