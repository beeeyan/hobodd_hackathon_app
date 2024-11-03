import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../util/converter/date_time_converter.dart';
import '../../../util/formatter/date_time_formatter.dart';
import '../../user/user_provider.dart';
import 'member.dart';
import 'member_list_notifier.dart';

class MemberList extends ConsumerWidget {
  const MemberList({super.key});

  static const String title = 'メンバー';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberList = ref.watch(memberListProvider);
    final userProviderAsync = ref.watch(userProvider);
    return Center(
      child: memberList.when(
        data: (data) => ListView(
          children: [
            ...List<Widget>.generate(
              data.length,
              (index) => _MemberListTile(
                userId: data[index].userId.toString(),
                memberName: data[index].username,
                lastActivity: data[index]
                    .clickedAt
                    .toDateFromString()
                    .toMMddSeparatedBySlash(),
                lastCondition: data[index].sticker,
              ),
            ).intersperse(const Divider()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      userProviderAsync.when(
                        data: (data) {
                          return Text(
                            data.roomId ?? '',
                          );
                        },
                        error: (error, stackTrace) => Text('Error: $error'),
                        loading: () => const Text('Loading...'),
                      ),
                      Gap(4.w),
                      const Icon(
                        Symbols.content_copy,
                      ),
                    ],
                  ),
                  onPressed: () async {
                    try {
                      const data = ClipboardData(text: '{ルームID}');
                      await Clipboard.setData(data);

                      _showSnackBar(context, 'ルームIDをコピーしました');
                    } catch (e) {
                      _showSnackBar(context, 'ルームIDのコピーに失敗しました');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
        loading: () => const CircularProgressIndicator(),
        error: (error, _) => Text('Error: $error'),
      ),
    );
  }
}

void _showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          // Code to execute.
        },
      ),
    ),
  );
}

class _MemberListTile extends StatelessWidget {
  const _MemberListTile({
    super.key,
    required this.userId,
    required this.memberName,
    required this.lastActivity,
    required this.lastCondition,
  });

  final String userId;
  final String memberName;
  final String lastActivity;
  final String lastCondition;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: Container(
        width: 46.w,
        height: 46.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.secondaryContainer,
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                memberName != '' ? memberName[0] : '',
                style: textTheme.titleMedium,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                lastCondition,
                style: textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
      title: Text(memberName),
      subtitle: Text('$lastActivity にめくりました'),
      onTap: () {
        // TODO(hott3): context.goに修正
        context.goNamed(
          MemberPage.name,
          extra: userId,
        );
      },
    );
  }
}
