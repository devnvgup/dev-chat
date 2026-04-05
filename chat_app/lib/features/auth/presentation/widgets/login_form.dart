import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_primary_button.dart';
import '../../../../shared/widgets/app_text_field.dart';
import 'section_label.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionLabel(label: 'Email or username'),
        const SizedBox(height: 8),
        const AppTextField(
          hintText: 'hello@devchat.com',
          prefixIcon: Icons.alternate_email_rounded,
        ),
        const SizedBox(height: 18),
        Row(
          children: [
            const Expanded(child: SectionLabel(label: 'Password')),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'Forgot password?',
                style: textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const AppTextField(
          hintText: '••••••••',
          prefixIcon: Icons.lock_outline_rounded,
          obscureText: true,
        ),
        const SizedBox(height: 24),
        const AppPrimaryButton(label: 'Login'),
      ],
    );
  }
}
