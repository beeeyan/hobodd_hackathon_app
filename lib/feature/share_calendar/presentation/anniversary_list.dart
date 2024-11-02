import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
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
              onPressed: () async {
                final dialog = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('記念日を作成'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: '記念日名',
                          ),
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            labelText: '日付',
                            suffixIcon: Icon(
                              Symbols.today,
                              fill: 1,
                            ),
                          ),
                          onTap: () async {
                            // 日付選択ダイアログを表示
                            final picker = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              // 日付が選択された場合の処理
                            });
                          },
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'メッセージ',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                // TODO(hott3): 記念日を作成に必要なデータを渡す
                                Navigator.of(context).pop();
                              },
                              child: const Text('作成'),
                            ),
                          ],
                        ),
                      ].intersperse(Gap(24.h)).toList(),
                    ),
                  ),
                );
                // TODO(hott3): 記念日を編集する処理を追加
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
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('記念日を編集'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: '記念日名',
                  ),
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: '日付',
                    suffixIcon: Icon(
                      Symbols.today,
                      fill: 1,
                    ),
                  ),
                  onTap: () async {
                    // 日付選択ダイアログを表示
                    await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    ).then((value) {
                      // 日付が選択された場合の処理
                    });
                  },
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'メッセージ',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        // TODO(hott3): 記念日を編集する処理を追加
                        Navigator.of(context).pop();
                      },
                      child: const Text('編集'),
                    ),
                  ],
                ),
              ].intersperse(Gap(24.h)).toList(),
            ),
          ),
        );
      },
    );
  }
}
