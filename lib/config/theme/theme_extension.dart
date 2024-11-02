import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

/*
ThemeDataExtensionのcolorとtextStyleを使用する場合
final appColors = Theme.of(context).appColors;
final appTextStyles = Theme.of(context).appTextStyles;
*/

extension ThemeDataExtension on ThemeData {
  AppColors get appColors => extension<AppColors>()!;
  AppTextStyles get appTextStyles => extension<AppTextStyles>()!;
}
