import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';

class DateFilterItem extends StatelessWidget {
  final int index;
  final DateTime dateTime;
  final int selectedIndex;

  const DateFilterItem({
    super.key,
    required this.dateTime,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = (index == selectedIndex);

    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: AppBoxDecoration.actionButtonDecoration.copyWith(
          color: isSelected ? AppColors.mainColor : Colors.white,
          border: BoxBorder.all(color: AppColors.mainColor, width: 3.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              monthDayYear(dateTime.add(Duration(days: index))).substring(0, 3),
              style: AppTextStyles.actionButton.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              (dateTime.add(Duration(days: index))).day.toString(),
              style: AppTextStyles.actionButton.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              dayName(dateTime.add(Duration(days: index))),
              style: AppTextStyles.actionButton.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}