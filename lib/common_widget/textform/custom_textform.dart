import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.labelText,
    required this.controller,
    this.onChanged,
    this.suffixIcon,
    this.onTap,
    this.inputFormatters,
  });

  final String labelText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final void Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
      onTap: onTap,
    );
  }
}
