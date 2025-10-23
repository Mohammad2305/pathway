import 'package:flutter/material.dart';
import '../../../shared/caches/cache_helper.dart';
import '../../../shared/constants/app_constants.dart';

Color determineColor(Color darkColor, Color lightColor){
  return CacheHelper.getData(AppConstants.appDarkMode)??false ? darkColor : lightColor;
}