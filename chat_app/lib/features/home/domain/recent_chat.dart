class RecentChat {
  const RecentChat({
    required this.name,
    required this.avatarUrl,
    required this.message,
    required this.timeLabel,
    this.isUnread = false,
    this.isOnline = false,
  });

  final String name;
  final String avatarUrl;
  final String message;
  final String timeLabel;
  final bool isUnread;
  final bool isOnline;
}
