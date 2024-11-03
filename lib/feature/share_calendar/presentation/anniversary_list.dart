import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../common_widget/textform/custom_textform.dart';
import '../../../util/converter/date_time_converter.dart';
import '../../../util/formatter/date_time_formatter.dart';
import 'anniversary_list_notifier.dart';

class AnniversaryList extends ConsumerWidget {
  const AnniversaryList({super.key});

  static const String title = '記念日';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aniversaryListNotifier = ref.watch(
      aniversaryListNotifierProvider.notifier,
    );
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
                        CustomTextForm(
                          labelText: '記念日名',
                          controller:
                              aniversaryListNotifier.aniversaryNameController,
                          onChanged: aniversaryListNotifier.inputAniversaryName,
                        ),
                        CustomTextForm(
                          labelText: '日付',
                          controller:
                              aniversaryListNotifier.aniversaryDateController,
                          onChanged: aniversaryListNotifier.inputAniversaryName,
                          suffixIcon: const Icon(
                            Symbols.today,
                            fill: 1,
                          ),
                          onTap: () async {
                            // 日付選択ダイアログを表示
                            final picker = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              if (value == null) {
                                return;
                              }
                              aniversaryListNotifier.aniversaryDateController
                                  .text = value.toYyyyMMddSeparatedBySlash();
                              aniversaryListNotifier.inputAniversaryDate(
                                value.toStringFromDate(),
                              );
                            });
                          },
                        ),
                        CustomTextForm(
                          labelText: 'メッセージ',
                          controller: aniversaryListNotifier
                              .aniversaryMessageController,
                          onChanged:
                              aniversaryListNotifier.inputAniversaryMessage,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              onPressed: () async {
                                await aniversaryListNotifier.save();
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

class _AnniversaryListTile extends ConsumerWidget {
  const _AnniversaryListTile({
    super.key,
    required this.anniversaryName,
    required this.anniversaryDate,
    required this.message,
  });

  final String anniversaryName;
  final DateTime anniversaryDate;
  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aniversaryListNotifier = ref.watch(
      aniversaryListNotifierProvider.notifier,
    );
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final dateYyyyMmDd = anniversaryDate.toYyyyMMddSeparatedBySlash();

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
            anniversaryDate.toMMddSeparatedBySlash(),
            style: textTheme.titleMedium,
          ),
        ),
      ),
      title: Text(anniversaryName),
      subtitle: Text('$dateYyyyMmDd $message'),
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('記念日を編集'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextForm(
                  labelText: '記念日名',
                  controller: aniversaryListNotifier.aniversaryNameController,
                  onChanged: aniversaryListNotifier.inputAniversaryName,
                ),
                CustomTextForm(
                  labelText: '日付',
                  controller: aniversaryListNotifier.aniversaryDateController,
                  onChanged: aniversaryListNotifier.inputAniversaryName,
                  suffixIcon: const Icon(
                    Symbols.today,
                    fill: 1,
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
                CustomTextForm(
                  labelText: 'メッセージ',
                  controller:
                      aniversaryListNotifier.aniversaryMessageController,
                  onChanged: aniversaryListNotifier.inputAniversaryMessage,
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
