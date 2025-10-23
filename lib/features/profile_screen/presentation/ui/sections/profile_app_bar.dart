import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';

class ProfileAppBar extends StatefulWidget implements PreferredSizeWidget {
  final void Function()? onPressed;
  const ProfileAppBar({super.key, required this.onPressed,});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 56.h);
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Color(AppColors.mainColor), weight: 20),
      actions: [
        IconButton(
          onPressed: widget.onPressed,
          icon: CacheHelper.getData("dark_mode") ?? false ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
        ),
      ],
    );
  }
}
