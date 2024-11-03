import 'package:flutter/material.dart';

import 'confirm_dialog.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog._({
    required this.message,
  });

  final String message;

  static Future<void> show({
    required BuildContext context,
    required String message,
  }) async {
    await showDialog<void>(
      context: context,
      builder: (_) => ErrorDialog._(
        message: message,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConfirmDialog(
      message: message,
      confirmButtonText: '閉じる',
      canCancel: false,
    );
  }
}
