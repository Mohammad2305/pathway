import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/app_colors.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';

class UserInfo extends StatelessWidget {
  final String? userName;
  final String? userImage;

  const UserInfo({super.key, this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, ${userName ?? "User-Name"}",
                style: AppTextStyles.welcomeTitle,
              ),
              Text("Have a nice day", style: AppTextStyles.appOrdinary),
            ],
          ),
          CircleAvatar(
            radius: 33.sp,
            backgroundColor: AppColors.mainColor,
            child: CircleAvatar(
              radius: 30.sp,
              backgroundImage: NetworkImage(
                userImage ??
                    "https://i.pinimg.com/736x/b1/5c/8a/b15c8a9f38805538eb268b04048a3308.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}