import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import '../../../util/formatter/date_time_formatter.dart';
import '../services/calendar_service.dart';
import 'widgets/sticker_button.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({
    super.key,
    this.date,
  });

  final DateTime? date;

  static const String name = 'calendar';
  static const String path = '/calendar';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDate = useState<DateTime?>(date);
    final calendarService = ref.watch(calendarServiceProvider);
    final selectedEmoji = useState<String?>(null);
    const emojiList = ['👍', '👎', '🔥', '☔️'];

    Future<void> flip(DateTime date) async {
      final nextDate = calendarService.incrementDate(date);
      await calendarService.saveDate(nextDate);
      if (context.mounted) {
        await context.pushNamed(
          CalendarPage.name,
          extra: nextDate,
        );
      }
    }

    useEffect(
      () {
        SchedulerBinding.instance.addPostFrameCallback((_) async {
          if (date != null) {
            return;
          }
          final fetchDate = await calendarService.fetchDate();
          currentDate.value = fetchDate;
        });
        return () {};
      },
      [],
    );

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Gap(160.h),
              Column(
                children: [
                  Text(
                    currentDate.value != null
                        ? currentDate.value!.toMMddSeparatedBySlash()
                        : '',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  if (calendarService.isBeforeDate(currentDate.value)) ...[
                    Gap(24.h),
                    Text(
                      'あなたの気分を選択してください',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Gap(28.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List<Widget>.generate(
                          emojiList.length,
                          (int index) => StickerButton(
                            emoji: emojiList[index],
                            isSelected: selectedEmoji.value == emojiList[index],
                            onTap:
                                calendarService.isBeforeDate(currentDate.value)
                                    ? () async {
                                        selectedEmoji.value = emojiList[index];
                                        await flip(currentDate.value!);
                                      }
                                    : null,
                          ),
                        ).intersperse(Gap(24.h)),
                      ],
                    ),
                  ],
                  Gap(30.h),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    if (index == 3) {
                      return Column(
                        children: [
                          Gap(8.h),
                          Text(
                            '{その日にちのことわざの本文}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Gap(12.h),
                          Text(
                            '{その日にちのことわざの説明}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      );
                    }
                    return Text(
                      '{共有カレンダーに保存されたその日にちの記念日1}\n{記念日1.メッセージ}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                  separatorBuilder: (context, index) => Gap(12.h),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
