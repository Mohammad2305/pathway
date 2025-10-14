import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/ui/widgets/custom_button.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/date_info.dart';

class AppActions extends StatelessWidget {
  final DateTime dateTime;
  final void Function() onTap;
  const AppActions({super.key, required this.dateTime, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DateInfo(dateTime: dateTime),
          CustomButton(
            onTap: onTap,
            decoration: AppBoxDecoration.actionButtonDecoration,
            icon: Icon(Icons.add, color: Colors.white),
            label: "Add Task",
          ),
        ],
      ),
    );
  }
}
