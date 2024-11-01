import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

/*
ThemeDataのtextThemeを使用する場合
style: Theme.of(context).textTheme.labelLarge,
*/

ThemeData lightTheme() {
  // MEMO(abe-tk): ColorSchemeを使用する場合はthemeを以下コメントアウトのように設定する
  // final theme = ThemeData.from(
  //   useMaterial3: true,
  //   colorScheme: AppColorSchemes.lightColorScheme,
  // );

  final theme = ThemeData();

  return theme.copyWith(
    /*
    MEMO(abe-tk): MD3のTextThemeを変更する場合は以下のようにする
    theme.textTheme.copyWith(
        labelLarge: theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.sp,
      ).apply(
        fontFamily: FontFamily.notoSansJP,
      ),
    */
    textTheme: theme.textTheme.apply(
      fontFamily: FontFamily.notoSansJP,
      /*
      MEMO(abe-tk): colorSchemeの色を使用してdisplayColor、bodyColorを設定する場合は以下のように設定する
      displayColor: theme.colorScheme.onSurface,
      bodyColor: theme.colorScheme.onSurface,
      */
    ),
    extensions: const {
      AppColors.light,
      AppTextStyles.light,
    },
  );
}
