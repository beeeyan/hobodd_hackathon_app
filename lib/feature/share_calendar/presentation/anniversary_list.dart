import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intersperse/intersperse.dart';
import 'package:material_symbols_icons/symbols.dart';

class AnniversaryList extends StatelessWidget {
  const AnniversaryList({super.key});

  static const String title = '記念日';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ListView(
            children: [
              ...List<Widget>.generate(
                6,
                (index) => _AnniversaryListTile(
                  anniversaryName: 'ルームの記念日$index.記念日名',
                  anniversaryDate: DateTime.now(),
                  message: 'おめでとう！',
                ),
              ).intersperse(const Divider()),
            ],
          ),
          Positioned(
            right: 16.w,
            bottom: 16.w,
            child: FloatingActionButton(
              elevation: 0,
              mini: true,
              child: const Icon(Symbols.edit),
              onPressed: () => {
                // TODO(hott3): 記念日の作成ダイアログの表示
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _AnniversaryListTile extends StatelessWidget {
  const _AnniversaryListTile({
    super.key,
    required this.anniversaryName,
    required this.anniversaryDate,
    required this.message,
  });

  final String anniversaryName;
  final DateTime anniversaryDate;
  final String message;

  // anniversaryDate を 'yyyy/MM/dd' にフォーマットする
  String get formattedAnniversaryDate {
    return '${anniversaryDate.year}/${anniversaryDate.month}/${anniversaryDate.day}';
  }

  // anniversaryDate を 'MM/dd' にフォーマットする
  String get formattedAnniversaryDateShort {
    return '${anniversaryDate.month}/${anniversaryDate.day}';
  }

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
        child: Center(
          child: Text(
            formattedAnniversaryDateShort,
            style: textTheme.titleMedium,
          ),
        ),
      ),
      title: Text(anniversaryName),
      subtitle: Text('$formattedAnniversaryDate $message'),
      onTap: () {
        // TODO(hott3): 記念日の編集ダイアログを表示する
      },
    );
  }
}
