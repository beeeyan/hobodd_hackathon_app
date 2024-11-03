import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import '../../../util/converter/date_time_converter.dart';
import '../../../util/formatter/date_time_formatter.dart';
import '../../share_calendar/domain/model/calendar_get_data.dart';
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
    final currentDateData = useState<List<CalendarGetData>?>(null);
    final calendarService = ref.watch(calendarServiceProvider);
    final selectedEmoji = useState<String?>(null);
    const emojiList = ['👍', '👎', '🔥', '☔️'];

    Future<void> flip(DateTime date) async {
      final nextDate = calendarService.incrementDate(date);
      await calendarService.createLog(
        clickedDate: nextDate.toStringFromDate(),
        status: selectedEmoji.value,
      );
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
            currentDateData.value = await calendarService.fetchCalendar(
              lastClickedDate: date!,
            );
            return;
          }
          final fetchDate = await calendarService.fetchDate();
          currentDate.value = fetchDate;
          currentDateData.value = await calendarService.fetchCalendar(
            lastClickedDate: fetchDate,
          );
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
                  itemCount: currentDateData.value?.length ?? 0,
                  itemBuilder: (context, index) {
                    // if (index == currentDateData.value!.length - 1) {
                    return Column(
                      children: [
                        Gap(8.h),
                        Text(
                          currentDateData.value![index].title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Gap(12.h),
                        Text(
                          currentDateData.value![index].message,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    );
                    // }
                    // return Text(
                    //   '{共有カレンダーに保存されたその日にちの記念日1}\n{記念日1.メッセージ}',
                    //   style: Theme.of(context).textTheme.bodyMedium,
                    // );
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
