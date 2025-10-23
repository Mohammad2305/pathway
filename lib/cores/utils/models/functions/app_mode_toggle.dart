import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/pathway.dart';

void appModeToggle() {
  if (Pathway.themeNotifier.value == ThemeMode.light) {
    Pathway.themeNotifier.value = ThemeMode.dark;
    CacheHelper.setData("dark_mode", true);
  } else {
    Pathway.themeNotifier.value = ThemeMode.light;
    CacheHelper.setData("dark_mode", false);
  }
}