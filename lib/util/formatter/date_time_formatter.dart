import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String toMMddSeparatedBySlashLong() {
    final formatter = DateFormat('yyyy/MM/dd');
    final formatted = formatter.format(this);
    return formatted;
  }

  String toMMddSeparatedBySlash() {
    final formatter = DateFormat('MM/dd');
    final formatted = formatter.format(this);
    return formatted;
  }
}
