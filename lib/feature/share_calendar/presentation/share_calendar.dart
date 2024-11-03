import 'package:flutter/material.dart';

import '../../../config/theme/theme_extension.dart';
import 'anniversary_list.dart';
import 'member_list.dart';

class ShareCalendarPage extends StatelessWidget {
  const ShareCalendarPage({super.key});

  static const String name = 'share_calendar';
  static const String path = '/share_calendar';

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    final appTextStyles = Theme.of(context).appTextStyles;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            // TODO(hott3): ルーム名を表示する
            '{ルーム名}',
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Text(MemberList.title),
              ),
              Tab(
                icon: Text(AnniversaryList.title),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: MemberList(),
            ),
            Center(
              child: AnniversaryList(),
            ),
          ],
        ),
      ),
    );
  }
}
