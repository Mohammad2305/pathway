import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12.h,
          children: [
            ProfilePicture(
              radius: 100.sp,
            ),
            ChangeImage(
              onTap: (String? imgPath) {
                CacheHelper.setData(AppConstants.appUserImage, imgPath);
                setState(() {});
              },
            ),
            Divider(),
            SetName(
              setNameController: setNameController,
              onTap: (name) {
                CacheHelper.setData(AppConstants.appUserName, name);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
