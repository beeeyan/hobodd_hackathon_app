extension DateTimeStringConverter on DateTime {
  // DateTime -> String
  String toStringFromDate() {
    return toUtc().toIso8601String();
  }
}

extension StringDateTimeConverter on String {
  // String -> DateTime
  DateTime toDateFromString() {
    return DateTime.parse(this).toLocal();
  }
}
