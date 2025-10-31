import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/cubits/user_cubit/user_cubit.dart';
import '../../../../../cores/shared/ui/widgets/profile_picture.dart';
import '../../../../../cores/shared/ui/widgets/change_image.dart';
import '../widgets/set_name.dart';

class SetUserInfoBody extends StatelessWidget {
  const SetUserInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12.h,
        children: [
          BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              return ProfilePicture(
                radius: 100.sp,
              );
            }
          ),
          ChangeImage(
            isFirstSet: true,
            onTap: (String? imgPath) {
              context.read<UserCubit>().changeImage(imgPath);
            },
          ),
          Divider(),
          SetName(
            setNameController: context.read<UserCubit>().setNameController,
            onTap: (name) {
              context.read<UserCubit>().changeName(name);
            },
          ),
        ],
      ),
    );
  }
}