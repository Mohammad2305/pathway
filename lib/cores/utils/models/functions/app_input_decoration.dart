import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/themes/app_input_border_style.dart';
import '../../../shared/themes/app_text_styles.dart';
import '../classes/input_info.dart';

InputDecoration inputDecoration(InputInfo inputInfo, bool isDark){
  return InputDecoration(
    // helperText: maxLength==null ? null : "$label length",
    hintStyle: AppTextStyles.textFtS14FW500Cbt,
    prefixIcon: inputInfo.prefixWidget,
    suffixIcon: inputInfo.suffixWidget,
    hintText: inputInfo.hint,
    border: AppBorderStyles.border.copyWith(
      borderSide: BorderSide(color: isDark ? Colors.white : Colors.black, width: 2.sp)
    ),
    focusedBorder: AppBorderStyles.focusedBorder,
    enabledBorder: AppBorderStyles.enabledBorder.copyWith(
        borderSide: BorderSide(color: isDark ? Colors.white : Colors.black, width: 2.sp)
    ),
    errorBorder: AppBorderStyles.errorBorder,
    disabledBorder: AppBorderStyles.disabledBorder,
  );
}