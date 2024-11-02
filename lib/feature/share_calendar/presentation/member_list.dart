import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';
import 'package:material_symbols_icons/symbols.dart';

class MemberList extends StatelessWidget {
  const MemberList({super.key});

  static const String title = 'メンバー';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          ...List<Widget>.generate(
            6,
            (index) => _MemberListTile(
              memberName: 'ユーザー$index.ユーザー名',
              lastActivity: '01/01',
              lastCondition: '👍',
            ),
          ).intersperse(const Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('ルームID : {ルームID}'),
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
    required this.memberName,
    required this.lastActivity,
    required this.lastCondition,
  });

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
      subtitle: Text('$lastActivityにめくりました'),
      onTap: () {
        // TODO(hott3): メンバー詳細画面に遷移する
      },
    );
  }
}
