import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/actions.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/user_info.dart';

class HomeBody extends StatelessWidget {
  final String? userName;
  final String? userImage;
  const HomeBody({super.key, this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            spacing: 20.h,
            children: [
              UserInfo(userName: userName, userImage: userImage),
              AppActions()
            ],
          ),
        ),
      ),
    );
  }
}