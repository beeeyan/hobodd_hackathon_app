import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import '../../../util/formatter/date_time_formatter.dart';
import 'member_notifier.dart';

class MemberPage extends ConsumerWidget {
  const MemberPage({
    super.key,
    required this.userId,
  });

  final String userId;

  static const String name = 'member';
  static const String path = '/member';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final member = ref.watch(memberProvider(userId));

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
            child: member.when(
              data: (data) => ListView(
                children: [
                  ...List<Widget>.generate(
                    data.length,
                    (index) => _MemberLogListTile(
                      logStatus: data[index].status,
                      // TODO(hott3): カレンダーそのものの日時を取得する
                      clickedDate: data[index].clickedAt,
                      // TODO(hott3): カレンダーをめくった日時
                      logCreatedDate: data[index].createdAt,
                    ),
                  ).intersperse(const Divider()),
                ],
              ),
              error: (error, _) => Center(
                child: Text(error.toString()),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
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
    this.logStatus,
    required this.clickedDate,
    required this.logCreatedDate,
  });

  final String? logStatus;

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
            logStatus ?? '',
            style: textTheme.displayMedium,
          ),
        ),
      ),
      title: Text(logCreatedDate.toMMddHHmmSeparatedBySlash()),
      subtitle: Text('${clickedDate.toMMddSeparatedBySlash()} のカレンダーをめくりました'),
    );
  }
}
