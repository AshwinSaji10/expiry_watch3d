class Reminders {
  final String id;
  final String? itemId;
  final String? reminderType;
  final String? offsetInterval;
  final String? lastSentAt;

  Reminders({
    required this.id,
    required this.itemId,
    required this.reminderType,
    required this.offsetInterval,
    required this.lastSentAt,
  });
}
