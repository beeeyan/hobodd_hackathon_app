import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/converter/date_time_converter.dart';
import '../../../util/shared_preferences/shared_preferences_repository.dart';

final calendarServiceProvider = Provider<CalendarService>(
  (ref) => CalendarService(
    sharedPref: ref.watch(sharedPreferencesRepositoryProvider),
  ),
);

class CalendarService {
  CalendarService({
    required SharedPreferencesRepository sharedPref,
  }) : _sharedPref = sharedPref;

  final SharedPreferencesRepository _sharedPref;

  Future<DateTime> fetchDate() async {
    final dateTimeNow = DateTime.now();
    final date = await _sharedPref.fetch<String>(
      SharedPreferencesKey.date,
    );

    if (date == null) {
      await saveDate(dateTimeNow);
      return dateTimeNow;
    }

    return date.toDateFromString();
  }

  Future<void> saveDate(
    DateTime date,
  ) async {
    await _sharedPref.save<String>(
      SharedPreferencesKey.date,
      date.toStringFromDate(),
    );
  }

  DateTime incrementDate(DateTime date) {
    return date.add(const Duration(days: 1));
  }

  bool isDifferentDate(DateTime dateTime, DateTime dateTimeNow) {
    return dateTime.year != dateTimeNow.year ||
        dateTime.month != dateTimeNow.month ||
        dateTime.day != dateTimeNow.day;
  }

  bool isBeforeDate(DateTime? date) {
    final dateTimeNow = DateTime.now();

    // MEMO(abe-tk): デバック用にコメントアウト
    // return date != null;

    return date != null &&
        date.isBefore(dateTimeNow) &&
        isDifferentDate(date, dateTimeNow);
  }
}
