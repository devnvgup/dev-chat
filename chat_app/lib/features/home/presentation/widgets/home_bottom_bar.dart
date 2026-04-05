import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 26),
      decoration: BoxDecoration(
        color: AppColors.background.withValues(alpha: 0.84),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(36)),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 24,
            offset: Offset(0, -6),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            _HomeNavItem(icon: Icons.group_outlined, label: 'Circles'),
            _HomeNavCenterItem(),
            _HomeNavItem(icon: Icons.settings_outlined, label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class _HomeNavItem extends StatelessWidget {
  const _HomeNavItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColors.outlineStrong),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
            color: AppColors.outlineStrong,
          ),
        ),
      ],
    );
  }
}

class _HomeNavCenterItem extends StatelessWidget {
  const _HomeNavCenterItem();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryLight],
        ),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.25),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Icon(Icons.chat_bubble_rounded, color: Colors.white, size: 24),
      ),
    );
  }
}
