import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intersperse/intersperse.dart';

import '../../../util/formatter/date_time_formatter.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  static const String name = 'member';
  static const String path = '/member';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // TODO(hott3): メンバー名を取得して表示する
    const memberName = 'メンバー名';

    return Scaffold(
      appBar: AppBar(
        title: const Text(memberName),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200.h,
            child: Container(
              width: 100.w,
              height: 100.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.secondaryContainer,
              ),
              child: Center(
                child: Text(
                  memberName != '' ? memberName[0] : '',
                  style: textTheme.displayMedium,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ...List<Widget>.generate(
                  6,
                  (index) => _MemberLogListTile(
                    logStatus: '👍',
                    // TODO(hott3): カレンダーそのものの日時を取得する
                    clickedDate: DateTime.now(),
                    // TODO(hott3): カレンダーをめくった日時
                    logCreatedDate: DateTime.now(),
                  ),
                ).intersperse(const Divider()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MemberLogListTile extends StatelessWidget {
  const _MemberLogListTile({
    super.key,
    required this.logStatus,
    required this.clickedDate,
    required this.logCreatedDate,
  });

  final String logStatus;

  /// カレンダーそのものの日時
  final DateTime clickedDate;

  /// カレンダーをめくった日時
  final DateTime logCreatedDate;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: SizedBox(
        width: 52.w,
        height: 52.w,
        child: Center(
          child: Text(
            logStatus,
            style: textTheme.displayMedium,
          ),
        ),
      ),
      title: Text(logCreatedDate.toMMddHHmmSeparatedBySlash()),
      subtitle: Text('${clickedDate.toMMddSeparatedBySlash()} のカレンダーをめくりました'),
    );
  }
}
