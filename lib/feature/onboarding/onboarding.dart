import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../common_widget/button/primary.button.dart';
import '../../common_widget/dialog/primary_dialog.dart';
import '../../common_widget/textform/custom_textform.dart';
import '../../config/theme_extension.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const String name = 'onboarding';
  static const String path = '/onboarding';

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 208.h,
              height: 210.w,
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
                        onPressed: () async => PrimaryDialog.show(
                          context: context,
                          title: '共有カレンダーを作成',
                          firstWidget: CustomTextForm(
                            labelText: 'カレンダー名',
                            controller: TextEditingController(),
                          ),
                          secondWidget: const TextField(),
                          buttonLabel: '作成',
                          onPressed: () {},
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      PrimaryButton(
                        label: '参加',
                        onPressed: () async => PrimaryDialog.show(
                          context: context,
                          title: '共有カレンダーを作成',
                          firstWidget: const TextField(),
                          secondWidget: const TextField(),
                          buttonLabel: '参加',
                          onPressed: () {},
                        ),
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
