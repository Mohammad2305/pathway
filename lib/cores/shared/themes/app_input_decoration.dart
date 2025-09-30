import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/input_info.dart';
import 'app_input_border_style.dart';
import 'app_text_styles.dart';

InputDecoration inputDecoration(InputInfo inputInfo){
  return InputDecoration(
    // helperText: maxLength==null ? null : "$label length",
    hintStyle: AppTextStyles.appOrdinary,
    prefixIcon: inputInfo.prefixWidget,
    suffixIcon: inputInfo.suffixWidget,
    hintText: inputInfo.hint,
    border: AppBorderStyles.border,
    focusedBorder: AppBorderStyles.focusedBorder,
    enabledBorder: AppBorderStyles.enabledBorder,
    errorBorder: AppBorderStyles.errorBorder,
    disabledBorder: AppBorderStyles.disabledBorder,
  );
}