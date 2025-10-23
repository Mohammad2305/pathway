import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';

class AppTextStyles {
  static TextStyle textFtS30FW900Cbt = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w900,
  );

  static TextStyle textFtS16FW700Cbt = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textFtS14FW500Cbt = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle actions = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle actionButton = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
  );

  static TextStyle textFtS16FW700Cw = textFtS16FW700Cbt.copyWith(
    color: Colors.white,
  );

  static TextStyle textFt12Cw = TextStyle(color: Colors.white, fontSize: 12.sp);

  static TextStyle textFtS14FW500Cw = textFtS14FW500Cbt.copyWith(
    color: Colors.white,
  );

  static TextStyle verticalText = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle dateFilterNumber = TextStyle(
    color: Colors.white,
    fontSize: 40.sp,
    fontWeight: FontWeight.w500,
  );
}
