import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.labelText,
    required this.controller,
    this.onChanged,
    this.suffixOnPressed,
  });

  final String labelText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? suffixOnPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
      ],
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        contentPadding: EdgeInsets.symmetric(
          vertical: 4.h,
          horizontal: 16.w,
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: suffixOnPressed,
        ),
      ),
    );
  }
}