import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/formatter/date_time_formatter.dart';
import '../services/calendar_service.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentDate.value != null
                  ? currentDate.value!.toMMddSeparatedBySlash()
                  : '',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Gap(50.h),
            Align(
              child: FilledButton(
                // MEMO(abe-tk):
                // 遷移アクションはボタンじゃなくてGestureDetectorの`onHorizontalDragStart`がいいかも
                onPressed: calendarService.isBeforeDate(currentDate.value)
                    ? () async => flip(currentDate.value!)
                    : null,
                child: const Text('めくる'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
