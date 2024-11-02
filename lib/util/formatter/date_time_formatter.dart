import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String toMMddSeparatedBySlash() {
    final formatter = DateFormat('MM/dd');
    final formatted = formatter.format(this);
    return formatted;
  }
}
