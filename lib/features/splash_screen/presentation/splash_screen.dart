import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/set_user_info_screen/presentation/set_user_info_screen.dart';
import 'package:pathway/features/splash_screen/presentation/ui/parts/splash_body.dart';

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
        SetUserInfoScreen()
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
