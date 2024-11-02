import 'package:flutter/material.dart';

import '../feature/home/home.dart';
import '../feature/onboarding/onboarding.dart';
import '../feature/sample2.dart';

enum BottomNavigationBarPageType {
  home(
    'ホーム',
    'ホーム',
    Icons.home,
    MyHomePage.path,
  ),
  sample1(
    'サンプル1',
    'サンプル1',
    Icons.bookmark_border_outlined,
    OnboardingPage.path,
  ),
  sample2(
    'サンプル2',
    'サンプル2',
    Icons.bookmark_border_outlined,
    Sample2Page.path,
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
    if (path.startsWith(MyHomePage.path)) {
      return BottomNavigationBarPageType.home;
    }
    if (path.startsWith(OnboardingPage.path)) {
      return BottomNavigationBarPageType.sample1;
    }
    if (path.startsWith(Sample2Page.path)) {
      return BottomNavigationBarPageType.sample2;
    }
    return BottomNavigationBarPageType.home;
  }
}
