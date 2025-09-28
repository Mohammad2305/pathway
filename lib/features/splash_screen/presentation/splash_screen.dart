import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/home_screen/presentation/home_screen.dart';
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
        HomeScreen(
          userName: "Mohammed",
          userImage:
              "https://i.pinimg.com/736x/b1/5c/8a/b15c8a9f38805538eb268b04048a3308.jpg",
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: SplashBody());
  }
}
