import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/home_screen/presentation/home_screen.dart';
import 'package:pathway/features/set_user_info_screen/presentation/set_user_info_screen.dart';
import 'package:pathway/features/splash_screen/presentation/ui/parts/splash_body.dart';
import '../../../cores/shared/caches/cache_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      pushReplacementTo(
        context,
        CacheHelper.getData(AppConstants.appUserName) == null &&
            CacheHelper.getData(AppConstants.appUserImage) == null
        ? SetUserInfoScreen()
        : HomeScreen(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
