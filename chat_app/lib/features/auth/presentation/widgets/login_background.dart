import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.background, Color(0xFFFDFDFF)],
        ),
      ),
      child: Stack(
        children: const [
          _BlurBlob(
            alignment: Alignment.topLeft,
            color: AppColors.primaryLight,
            size: 280,
            offset: Offset(-90, -120),
          ),
          _BlurBlob(
            alignment: Alignment.bottomRight,
            color: AppColors.secondary,
            size: 340,
            offset: Offset(120, 90),
          ),
        ],
      ),
    );
  }
}

class _BlurBlob extends StatelessWidget {
  const _BlurBlob({
    required this.alignment,
    required this.color,
    required this.size,
    required this.offset,
  });

  final Alignment alignment;
  final Color color;
  final double size;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Transform.translate(
        offset: offset,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.22),
                blurRadius: 120,
                spreadRadius: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
