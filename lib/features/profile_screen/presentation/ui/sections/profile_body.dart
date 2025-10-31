import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/cores/shared/cubits/user_cubit/user_cubit.dart';
import 'package:pathway/cores/shared/ui/widgets/circle_icon.dart';
import 'package:pathway/cores/utils/models/functions/show_bottom_sheet.dart';
import 'package:pathway/cores/shared/ui/widgets/change_picture.dart';
import 'package:pathway/cores/shared/ui/widgets/change_image.dart';
import 'package:pathway/features/profile_screen/presentation/ui/widgets/change_name.dart';
import '../../../../../cores/shared/caches/cache_helper.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      child: Column(
        spacing: 20.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChangePicture(
            size: Size(6.w, 6.h),
            radius: 80.r,
            onTap: () {
              showCustomBottomSheet(
                context,
                ChangeImage(
                  isFirstSet: false,
                  onTap: (String? imgPath) {
                    context.read<UserCubit>().changeImage(imgPath);
                  },
                ),
              );
            },
          ),
          Divider(thickness: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                CacheHelper.getData(AppConstants.appUserName),
                style: AppTextStyles.textFtS16FW700Cbt,
              ),
              IconButton(
                onPressed: () async{
                  FocusScope.of(context).unfocus(); // ensure previous focus is cleared
                  await Future.delayed(const Duration(milliseconds: 150)); // short pause
                  showCustomBottomSheet(
                    context,
                    ChangeName(
                      setNameController: context.read<UserCubit>().setNameController,
                      name: CacheHelper.getData(AppConstants.appUserName),
                      onTap: (String name) {
                        context.read<UserCubit>().changeName(name);
                      },
                    ),
                  );
                },
                icon: CircleIcon(radius: 50, child: Icon(Icons.edit)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}