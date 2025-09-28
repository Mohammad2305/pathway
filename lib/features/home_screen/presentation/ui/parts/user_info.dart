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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, $userName", style: AppTextStyles.welcomeTitle,),
            Text("Have a nice day", style: AppTextStyles.appOrdinary,)
          ],
        ),
        CircleAvatar(
          radius: 33.sp,
          backgroundColor: AppColors.mainColor,
          child: CircleAvatar(
            radius: 30.sp,
            backgroundImage: NetworkImage(userImage!),
          ),
        )
      ],
    );
  }
}
