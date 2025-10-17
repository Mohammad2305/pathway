import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/caches/cache_helper.dart';
import '../../../../../cores/shared/ui/widgets/profile_picture.dart';
import '../../../../../cores/shared/ui/widgets/change_image.dart';
import '../widgets/set_name.dart';

class SetUserInfoBody extends StatefulWidget {
  const SetUserInfoBody({super.key});

  @override
  State<SetUserInfoBody> createState() => _SetUserInfoBodyState();
}

class _SetUserInfoBodyState extends State<SetUserInfoBody> {
  TextEditingController setNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12.h,
            children: [
              ProfilePicture(
                radius: 100.sp,
              ),
              ChangeImage(
                isFirstScreen: true,
                onTap: (String? imgPath) {
                  CacheHelper.setData("userAvatar", imgPath);
                  setState(() {});
                },
              ),
              Divider(),
              SetName(
                setNameController: setNameController,
                isFirstSet: true,
                onTap: (name) {
                  CacheHelper.setData("userName", name);
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
