import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    textTheme: theme.textTheme
        .copyWith(
          displayLarge: theme.textTheme.displayLarge!.copyWith(
            fontSize: 57.h,
          ),
          displayMedium: theme.textTheme.displayMedium!.copyWith(
            fontSize: 45.h,
          ),
          displaySmall: theme.textTheme.displaySmall!.copyWith(
            fontSize: 36.h,
          ),
          headlineLarge: theme.textTheme.headlineLarge!.copyWith(
            fontSize: 32.h,
          ),
          headlineMedium: theme.textTheme.headlineMedium!.copyWith(
            fontSize: 28.h,
          ),
          headlineSmall: theme.textTheme.headlineSmall!.copyWith(
            fontSize: 24.h,
          ),
          bodyLarge: theme.textTheme.bodyLarge!.copyWith(
            fontSize: 16.h,
          ),
          bodyMedium: theme.textTheme.bodyMedium!.copyWith(
            fontSize: 14.h,
          ),
          bodySmall: theme.textTheme.bodySmall!.copyWith(
            fontSize: 12.h,
          ),
          labelLarge: theme.textTheme.labelLarge!.copyWith(
            fontSize: 14.h,
          ),
          labelMedium: theme.textTheme.labelMedium!.copyWith(
            fontSize: 12.h,
          ),
          labelSmall: theme.textTheme.labelSmall!.copyWith(
            fontSize: 11.h,
          ),
          titleLarge: theme.textTheme.titleLarge!.copyWith(
            fontSize: 22.h,
          ),
          titleMedium: theme.textTheme.titleMedium!.copyWith(
            fontSize: 16.h,
          ),
          titleSmall: theme.textTheme.titleSmall!.copyWith(
            fontSize: 14.h,
          ),
        )
        .apply(
          fontFamily: FontFamily.notoSansJP,
          /*
          MEMO(abe-tk): 
          colorSchemeの色を使用してdisplayColor、bodyColorを設定する場合は以下のように設定する
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
