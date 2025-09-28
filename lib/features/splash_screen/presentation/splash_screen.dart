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
          userImage: "https://i.pinimg.com/1200x/b5/7f/fa/b57ffaa0dae9b4c09dac2018e3a6e7a4.jpg",
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
