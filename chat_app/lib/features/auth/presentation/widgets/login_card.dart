import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'login_form.dart';
import 'social_login_button.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key, required this.onLoginPressed});

  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 440),
      child: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: AppColors.surface.withValues(alpha: 0.78),
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Colors.white.withValues(alpha: 0.7)),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 40,
              offset: Offset(0, 20),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Devchat',
              textAlign: TextAlign.center,
              style: textTheme.displaySmall,
            ),
            const SizedBox(height: 10),
            Text(
              'Welcome back to the conversation.',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            LoginForm(onLoginPressed: onLoginPressed),
            const SizedBox(height: 28),
            Row(
              children: [
                const Expanded(child: Divider(color: AppColors.outline)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'OR CONTINUE WITH',
                    style: textTheme.labelMedium?.copyWith(letterSpacing: 1.2),
                  ),
                ),
                const Expanded(child: Divider(color: AppColors.outline)),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: SocialLoginButton(
                    label: 'Google',
                    icon: Icons.g_mobiledata_rounded,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: SocialLoginButton(
                    label: 'Apple',
                    icon: Icons.apple_rounded,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Text.rich(
              TextSpan(
                text: "Don't have an account? ",
                style: textTheme.bodyMedium,
                children: const [
                  TextSpan(
                    text: 'Sign up for free',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
