import 'package:flutter/material.dart';
import '../../../shared/themes/app_input_border_style.dart';
import '../../../shared/themes/app_text_styles.dart';
import '../classes/input_info.dart';

InputDecoration inputDecoration(InputInfo inputInfo){
  return InputDecoration(
    // helperText: maxLength==null ? null : "$label length",
    hintStyle: AppTextStyles.textFtS14FW500Cbt,
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