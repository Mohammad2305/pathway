import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/cores/shared/constants/app_assets.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';

class ProfilePicture extends StatelessWidget {
  final double? radius;

  const ProfilePicture({super.key, this.radius});

  @override
  Widget build(BuildContext context) {
    return CacheHelper.getData(AppConstants.appUserImage) == null
        ? CircleAvatar(radius: radius,child: Image.asset(AppAssets.userDefaultImage,),)
        : CircleAvatar(radius: radius, backgroundImage: FileImage(File(CacheHelper.getData(AppConstants.appUserImage)),),);
  }
}