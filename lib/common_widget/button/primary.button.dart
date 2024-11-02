import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    this.width = 77,
    this.height = 40,
    this.onPressed,
  });

  final String label;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 77.w,
      height: 40.h,
      child: FilledButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: colorScheme.surface,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: colorScheme.primary,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: colorScheme.primary,
              ),
        ),
      ),
    );
  }
}
