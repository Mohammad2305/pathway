import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/features/splash_screen/presentation/splash_screen.dart';

class Pathway extends StatelessWidget {
  const Pathway({super.key});

  static ValueNotifier<ThemeMode> themeNotifier = CacheHelper.getData(
      AppConstants.appDarkMode
  ) ?? false ? ValueNotifier(ThemeMode.dark) : ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
  return ValueListenableBuilder<ThemeMode>(
    valueListenable: themeNotifier,
    builder: (_, ThemeMode currentMode, __){
      return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData.dark(),
            theme: ThemeData.light(),
            themeMode: currentMode ,
            home: SplashScreen(),
          );
        },
      );
    },
  );
  }
}
