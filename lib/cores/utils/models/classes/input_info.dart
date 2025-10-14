import 'package:flutter/material.dart';

class InputInfo {
  InputInfo({
    this.validator,
    required this.controller,
    required this.label,
    required this.hint,
    this.prefixWidget,
    this.suffixWidget,
    this.maxLine,
    this.maxLength,
    this.readOnly,
    this.onTap,
    this.onChanged
  });

  final TextEditingController controller;
  final String label;
  final String? hint;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final int? maxLine;
  final int? maxLength;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final ValueChanged<String>? onChanged;
}
