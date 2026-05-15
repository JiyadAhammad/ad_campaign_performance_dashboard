import 'package:intl/intl.dart';

extension DateFormattingExtension on String {
  String toDate_dd_MMM_yyyy() {
    final DateTime parsedDate = DateTime.parse(this);

    return DateFormat('dd MMM yyyy').format(parsedDate);
  }
}
