import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../config/theme/theme_extension.dart';
import '../button/primary.button.dart';

class PrimaryDialog extends StatelessWidget {
  const PrimaryDialog({
    super.key,
    required this.title,
    required this.firstWidget,
    required this.secondWidget,
    required this.buttonLabel,
    this.onPressed,
  });

  final String title;
  final Widget firstWidget;
  final Widget secondWidget;
  final String buttonLabel;
  final VoidCallback? onPressed;

  // 2つのWidgetを持つダイアログ
  static Future<void> show({
    required BuildContext context,
    required String title,
    required Widget firstWidget,
    required Widget secondWidget,
    required String buttonLabel,
    required VoidCallback onPressed,
    bool canCancel = true,
  }) async {
    await showDialog<bool?>(
      context: context,
      builder: (_) => PrimaryDialog(
        title: title,
        firstWidget: firstWidget,
        secondWidget: secondWidget,
        buttonLabel: buttonLabel,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 312.w,
          minWidth: 312.w,
        ),
        child: IntrinsicHeight(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceDim,
              borderRadius: BorderRadius.all(
                Radius.circular(28.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 24.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: appColors.textMain,
                        ),
                  ),
                  Gap(18.h),
                  firstWidget,
                  Gap(16.h),
                  secondWidget,
                  Gap(24.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 24.h),
                      child: PrimaryButton(
                        buttonBackGroundColor:
                            Theme.of(context).colorScheme.surfaceDim,
                        label: buttonLabel,
                        onPressed: onPressed,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
