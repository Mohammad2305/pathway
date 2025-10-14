import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/features/splash_screen/presentation/splash_screen.dart';

class Pathway extends StatefulWidget {
  const Pathway({super.key});

  @override
  State<Pathway> createState() => _PathwayState();
}

class _PathwayState extends State<Pathway> {
  @override
  void initState() {
    CacheHelper.setData("dark_mode", false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        themeMode: CacheHelper.getData("dark_mode") ? ThemeMode.dark : ThemeMode.light ,
        home: SplashScreen(),
      ),
    );
  }
}
