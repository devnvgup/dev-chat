import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.background.withValues(alpha: 0.78),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 12,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuDs_uVIxtnXITSCtcwN97DM_PsMvCPwvjTKxCpMV85MN2rAFeqcK7q0lUeEVuqxSpHUzE6LFh1L-sReNQ-cSbjc2iiOxAvncRI5nktP5DNjZ2W7CqUQ9uxqP7i7GbOprgS5gqLhM0HHV_QFYVagfLElD4NXE08rHvfWHEeZK4y_4aSp3RqHDJaTzzzJTcmGmNw-FlzVSPFMyJmxwKGlJSALaVE_nF85UWNUQ5T9DIjyQx3t87dBkZv3y1sMF_HQLNUYPkQH-UW5GDy7',
                ),
              ),
              SizedBox(width: 12),
            ],
          ),
          Text(
            'Luminous',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: const Color(0xFF007AFF),
              fontSize: 24,
              letterSpacing: -0.8,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: AppColors.surfaceSoft,
              foregroundColor: const Color(0xFF007AFF),
            ),
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
    );
  }
}
