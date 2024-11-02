import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../feature/calendar/presentation/calendar.dart';
import '../feature/share_calendar/presentation/share_calendar.dart';

enum BottomNavigationBarPageType {
  calendar(
    'カレンダー',
    'カレンダー',
    Icons.today,
    CalendarPage.path,
  ),
  shareCalendar(
    '共有カレンダー',
    '共有カレンダー',
    Symbols.group,
    ShareCalendarPage.path,
  );

  const BottomNavigationBarPageType(
    this.title,
    this.bottomNavBarLabel,
    this.icon,
    this.path,
  );

  final String title;
  final String bottomNavBarLabel;
  final IconData icon;
  final String path;

  static BottomNavigationBarPageType pageTypeByPath(String path) {
    // 詳細画面に遷移してもボトムナビゲーションを表示させる場合を考慮して
    // startsWithで処理する。
    if (path.startsWith(CalendarPage.path)) {
      return BottomNavigationBarPageType.calendar;
    }
    if (path.startsWith(ShareCalendarPage.path)) {
      return BottomNavigationBarPageType.shareCalendar;
    }
    return BottomNavigationBarPageType.calendar;
  }
}
