import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/api_client/api_client.dart';
import '../../../util/converter/date_time_converter.dart';
import '../../../util/shared_preferences/shared_preferences_repository.dart';
import '../../share_calendar/domain/infra/calendar_repository_impl.dart';
import '../../share_calendar/domain/model/calendar_get_data.dart';
import '../domain/infra/log_repository_impl.dart';
import '../domain/model/log.dart';

final calendarServiceProvider = Provider<CalendarService>(
  (ref) => CalendarService(
    client: ref.watch(apiClientProvider),
    sharedPref: ref.watch(sharedPreferencesRepositoryProvider),
  ),
);

class CalendarService {
  CalendarService({
    required ApiClient client,
    required SharedPreferencesRepository sharedPref,
  })  : _client = client,
        _sharedPref = sharedPref;

  final ApiClient _client;
  final SharedPreferencesRepository _sharedPref;

  Future<List<Log>> fetchLogs() async {
    final userId = await _sharedPref.fetch<int>(
      SharedPreferencesKey.userId,
    );
    if (userId == null) {
      throw Exception('userId is null');
    }
    return LogRepositoryImpl(_client).get(
      userId: userId.toString(),
    );
  }

  Future<void> createLog({
    required String clickedDate,
    String? status,
  }) async {
    final userId = await _sharedPref.fetch<int>(
      SharedPreferencesKey.userId,
    );
    if (userId == null) {
      throw Exception('userId is null');
    }
    return LogRepositoryImpl(_client).post(
      userId: userId,
      clickedDate: clickedDate,
      status: status,
    );
  }

  Future<List<CalendarGetData>> fetchCalendar({
    String? roomId,
    required DateTime lastClickedDate,
  }) async {
    final roomId = await _sharedPref.fetch<String>(
      SharedPreferencesKey.roomId,
    );
    if (roomId == null) {
      throw Exception('roomId is null');
    }
    return CalendarRepositoryImpl(_client).get(
      roomId: roomId,
      lastClickedDate: lastClickedDate,
    );
  }

  Future<DateTime> fetchDate() async {
    final date = await _sharedPref.fetch<String>(
      SharedPreferencesKey.date,
    );

    if (date == null) {
      // dateがnull = アプリ初回起動時として現在日時の1日前を返す
      final yesterday = DateTime.now().add(
        const Duration(days: -1),
      );
      await saveDate(yesterday);
      return yesterday;
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
