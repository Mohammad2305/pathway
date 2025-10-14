import 'package:flutter/material.dart';
import 'package:pathway/features/home_screen/presentation/ui/sections/home_body.dart';

class HomeScreen extends StatelessWidget {
  final String? userName;
  final String? userImage;

  const HomeScreen({super.key, this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}
