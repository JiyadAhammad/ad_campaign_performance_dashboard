import 'package:intl/intl.dart';

extension DateFormattingExtension on String {
  String toDate_dd_MMM_yyyy() {
    final DateTime parsedDate = DateTime.parse(this);

    return DateFormat('dd MMM yyyy').format(parsedDate);
  }
}

extension TimeAgoExtension on String {
  String toTimeAgo() {
    try {
      final DateTime dateTime = DateTime.parse(this).toLocal();

      final Duration difference = DateTime.now().difference(dateTime);

      ///
      /// JUST NOW
      ///
      if (difference.inSeconds < 60) {
        return 'Just now';
      }

      ///
      /// MINUTES
      ///
      if (difference.inMinutes < 60) {
        return '${difference.inMinutes}m ago';
      }

      ///
      /// HOURS
      ///
      if (difference.inHours < 24) {
        return '${difference.inHours}hr ago';
      }

      ///
      /// DAYS
      ///
      if (difference.inDays < 7) {
        return '${difference.inDays}d ago';
      }

      ///
      /// WEEKS
      ///
      if ((difference.inDays / 7).floor() < 4) {
        return '${(difference.inDays / 7).floor()}w ago';
      }

      ///
      /// MONTHS
      ///
      if ((difference.inDays / 30).floor() < 12) {
        return '${(difference.inDays / 30).floor()}mo ago';
      }

      ///
      /// YEARS
      ///
      return '${(difference.inDays / 365).floor()}y ago';
    } catch (_) {
      return '';
    }
  }
}
