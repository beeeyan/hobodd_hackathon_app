import 'package:flutter/material.dart';

import '../../config/theme/theme_extension.dart';

class ShareCalendarPage extends StatelessWidget {
  const ShareCalendarPage({super.key});

  static const String name = 'share_calendar';
  static const String path = '/share_calendar';

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    final appTextStyles = Theme.of(context).appTextStyles;
    return Center(
      child: Column(
        children: [
          // MEMO(abe-tk): ThemeDataのtextThemeの使用例
          Text(
            'Sample 1',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: appColors.textMain,
                ),
          ),
          // MEMO(abe-tk): ThemeExtensionの使用例
          Text(
            'Sample 1',
            style: appTextStyles.textMain.copyWith(
              color: appColors.textMain,
            ),
          ),
        ],
      ),
    );
  }
}
