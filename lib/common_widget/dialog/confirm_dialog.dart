import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.message,
    this.confirmButtonText = 'はい',
    this.cancelButtonText = 'いいえ',
    this.canCancel = true,
    this.canPop = true,
    this.textAlign = TextAlign.center,
    this.horizontal = 32,
  });

  final String message;
  final String confirmButtonText;
  final String cancelButtonText;
  final bool canCancel;
  final bool canPop;
  final TextAlign? textAlign;
  final double horizontal;

  // ダイアログ
  static Future<bool> show({
    required BuildContext context,
    required String message,
    String confirmButtonText = 'はい',
    String cancelButtonText = 'いいえ',
    bool canCancel = true,
    bool canPop = true,
    TextAlign? textAlign,
    double horizontal = 32,
  }) async {
    final result = await showDialog<bool?>(
      context: context,
      builder: (_) => ConfirmDialog(
        message: message,
        confirmButtonText: confirmButtonText,
        cancelButtonText: cancelButtonText,
        canCancel: canCancel,
        canPop: canPop,
        textAlign: textAlign,
        horizontal: horizontal,
      ),
    );
    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final appColorSchemes = Theme.of(context).colorScheme;

    return PopScope(
      canPop: canPop,
      child: Dialog(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 275.w,
            maxWidth: 275.w,
            minHeight: 160.h,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontal.w,
                          vertical: 10.h,
                        ),
                        child: SelectableText(
                          message,
                          style: Theme.of(context).textTheme.labelLarge,
                          textAlign: textAlign,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Stack(
                    children: [
                      Divider(
                        color: Theme.of(context).dividerColor,
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (canCancel) ...[
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                style: TextButton.styleFrom(
                                  overlayColor: appColorSchemes.onPrimary,
                                ),
                                child: Text(
                                  cancelButtonText,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              color: Color(0xffdfdfdf),
                            ),
                          ],
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              style: TextButton.styleFrom(
                                overlayColor: appColorSchemes.onPrimary,
                              ),
                              child: Text(
                                confirmButtonText,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: appColorSchemes.primary,
                                    ),
                              ),
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
        ),
      ),
    );
  }
}
