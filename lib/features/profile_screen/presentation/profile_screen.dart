import 'package:flutter/material.dart';
import 'package:pathway/features/profile_screen/presentation/ui/sections/profile_app_bar.dart';
import 'package:pathway/features/profile_screen/presentation/ui/sections/profile_body.dart';
import '../../../cores/shared/caches/cache_helper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key,});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        onPressed: () {
          setState((){
            CacheHelper.setData("dark_mode", !CacheHelper.getData("dark_mode"));
          });
        },
      ),
      body: ProfileBody(),
    );
  }
}
