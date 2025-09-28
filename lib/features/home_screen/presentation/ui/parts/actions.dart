import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/date_info.dart';

class AppActions extends StatelessWidget {
  final DateTime dateTime;
  const AppActions({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DateInfo(dateTime: dateTime,),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
              decoration: AppBoxDecoration.actionButtonDecoration,
              child: Row(
                spacing: 5.w,
                children: [
                  Icon(Icons.add, color: Colors.white),
                  Text("Add Task", style: AppTextStyles.actionButton),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
