import 'package:flutter/material.dart';

// MEMO(abe-tk): サンプルとして`textMain`を用意しているが削除してもOK

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.textMain,
  });

  final TextStyle textMain;

  @override
  AppTextStyles copyWith({
    TextStyle? textMain,
  }) {
    return AppTextStyles(
      textMain: textMain ?? this.textMain,
    );
  }

  @override
  AppTextStyles lerp(AppTextStyles? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      textMain: TextStyle.lerp(textMain, other.textMain, t)!,
    );
  }

  static const light = AppTextStyles(
    textMain: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.black,
    ),
  );

  static const dark = light;
}
