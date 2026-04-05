import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/login_background.dart';
import '../widgets/login_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          LoginBackground(),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(24),
                child: LoginCard(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.only(bottom: 20),
        child: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.help_outline_rounded,
            size: 18,
            color: AppColors.textSecondary,
          ),
          label: const Text(
            'Need help signing in?',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
