import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common_widget/button/primary.button.dart';
import '../../../common_widget/dialog/primary_dialog.dart';
import '../../../common_widget/textform/custom_textform.dart';
import '../../../config/theme/theme_extension.dart';
import '../../calendar/presentation/calendar.dart';
import 'create_user_notifier.dart';
import 'join_room_notifier.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  static const String name = 'onboarding';
  static const String path = '/onboarding';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = Theme.of(context).appColors;
    final createUserNotifier = ref.watch(createUserNotifierProvider.notifier);
    final joinRoomNotifier = ref.watch(joinRoomNotifierProvider.notifier);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 208.h,
              child: Column(
                children: [
                  Text(
                    '共有カレンダーを作成しますか？共有カレンダーに参加しますか？\n招待されている人は共有カレンダーのIDをもらってください',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: appColors.textMain,
                        ),
                  ),
                  Gap(24.h),
                  Row(
                    children: [
                      PrimaryButton(
                        label: '作成',
                        buttonBackGroundColor:
                            Theme.of(context).colorScheme.surface,
                        onPressed: () async => PrimaryDialog.show(
                          context: context,
                          title: '共有カレンダーを作成',
                          firstWidget: CustomTextForm(
                            labelText: 'ユーザー名を入力',
                            controller: createUserNotifier.userNameController,
                            onChanged: createUserNotifier.inputUserName,
                            suffixOnPressed:
                                createUserNotifier.userNameController.text != ''
                                    ? createUserNotifier.clearUserName
                                    : null,
                          ),
                          secondWidget: CustomTextForm(
                            labelText: 'カレンダー名を入力',
                            controller: joinRoomNotifier.userNameController,
                            onChanged: createUserNotifier.inputRoomName,
                            suffixOnPressed:
                                joinRoomNotifier.roomIdController.text != ''
                                    ? createUserNotifier.clearRoomName
                                    : null,
                          ),
                          buttonLabel: '作成',
                          onPressed: () async {
                            await createUserNotifier.create();

                            if (context.mounted) {
                              context.goNamed(CalendarPage.name);
                            }
                          },
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      PrimaryButton(
                        label: '参加',
                        buttonBackGroundColor:
                            Theme.of(context).colorScheme.surface,
                        onPressed: () async {
                          await PrimaryDialog.show(
                            context: context,
                            title: '共有カレンダーを作成',
                            firstWidget: CustomTextForm(
                              labelText: 'ユーザー名を入力',
                              controller: createUserNotifier.userNameController,
                              onChanged: createUserNotifier.inputUserName,
                              suffixOnPressed:
                                  createUserNotifier.userNameController.text !=
                                          ''
                                      ? createUserNotifier.clearUserName
                                      : null,
                            ),
                            secondWidget: CustomTextForm(
                              labelText: 'カレンダーIDを入力',
                              controller: joinRoomNotifier.roomIdController,
                              onChanged: joinRoomNotifier.inputRoomName,
                              suffixOnPressed:
                                  joinRoomNotifier.roomIdController.text != ''
                                      ? createUserNotifier.clearRoomName
                                      : null,
                            ),
                            buttonLabel: '参加',
                            onPressed: () async {
                              await joinRoomNotifier.join();

                              if (context.mounted) {
                                context.goNamed(CalendarPage.name);
                              }
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
