import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pathway/cores/shared/cubits/user_cubit/user_cubit.dart';
import '../../caches/cache_helper.dart';
import 'profile_picture.dart';

class ChangePicture extends StatelessWidget {
  final Size size;
  final double? radius;
  final void Function()? onTap;
  const ChangePicture({super.key, required this.size, this.radius, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            return ProfilePicture(radius: radius);
          }
        ),
        Positioned(
          right: size.width,
          bottom: size.height,
          child: InkWell(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: CacheHelper.getData("dark_mode")??false ? Colors.black54 : Colors.white,
              radius: 15,
              child: Icon(Icons.camera_alt, size: 15,),
            ),
          ),
        ),
      ],
    );
  }
}
