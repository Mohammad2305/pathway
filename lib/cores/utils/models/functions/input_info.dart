import 'package:flutter/material.dart';

class InputInfo {
  InputInfo({
    required this.controller,
    required this.label,
    required this.hint,
    this.prefixWidget,
    this.suffixWidget,
    this.maxLine,
    this.maxLength,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final int? maxLine;
  final int? maxLength;
}
