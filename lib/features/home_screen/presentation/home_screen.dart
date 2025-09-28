import 'package:flutter/material.dart';
import 'package:pathway/features/home_screen/presentation/ui/sections/home_body.dart';

class HomeScreen extends StatelessWidget {
  final String? userName;
  final String? userImage;

  const HomeScreen({super.key, this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(
        userName: userName ?? "User-Name",
        userImage:
            userImage ??
            "https://i.pinimg.com/736x/ec/ce/ae/ecceaee5b4c02ce2c5030da88e530169.jpg",
      ),
    );
  }
}
