import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/cores/shared/ui/widgets/profile_picture.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';

class UserInfo extends StatefulWidget {
  final void Function() onTap;

  const UserInfo({super.key, required this.onTap});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${CacheHelper.getData("userName")}",
                  style: AppTextStyles.textFtS16FW700Cbt,
                  overflow: TextOverflow.ellipsis,
                ),
                Text("Have a nice day", style: AppTextStyles.textFtS14FW500Cbt),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: widget.onTap,
              child: ProfilePicture(radius: 30.sp),
            ),
          ),
        ],
      ),
    );
  }
}
