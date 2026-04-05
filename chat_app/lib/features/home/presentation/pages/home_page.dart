import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../data/recent_chats_fake_data.dart';
import '../widgets/home_bottom_bar.dart';
import '../widgets/home_header.dart';
import '../widgets/invite_banner.dart';
import '../widgets/recent_chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const HomeHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 140),
                children: [
                  Text(
                    'Recent Messages',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.outlineStrong,
                      letterSpacing: 1.8,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...recentChatsFakeData.map(
                    (chat) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: RecentChatTile(chat: chat),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const InviteBanner(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
