import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/app_mode_toggle.dart';
import 'package:pathway/features/profile_screen/presentation/ui/sections/profile_app_bar.dart';
import 'package:pathway/features/profile_screen/presentation/ui/sections/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        onPressed: () {
          appModeToggle();
        },
      ),
      body: ProfileBody(),
    );
  }
}
