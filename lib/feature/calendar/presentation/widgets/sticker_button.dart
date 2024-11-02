import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/app_color_scheme.dart';

class StickerButton extends StatelessWidget {
  const StickerButton({
    super.key,
    required this.emoji,
    required this.isSelected,
    this.onTap,
  });

  final String emoji;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 40.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).primaryColor
              : AppColorSchemes.lightColorScheme.surfaceContainerHigh,
          shape: BoxShape.circle,
        ),
        child: Text(
          emoji,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
