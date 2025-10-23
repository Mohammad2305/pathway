import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import 'package:pathway/cores/utils/models/functions/number_form.dart';

class DateFilterItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final void Function()? onTap;

  const DateFilterItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = (index == selectedIndex);

    return InkWell(
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w,),
        decoration: AppBoxDecoration.actionButtonDecoration.copyWith(
          color: isSelected ? Color(AppColors.mainColor) : Color(AppColors.mainColor).withAlpha(50),
          border: BoxBorder.all(color: Color(AppColors.mainColor), width: 3.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              monthDayYear(DateTime.now().add(Duration(days: index))).substring(0, 3).toUpperCase(),
              style: AppTextStyles.textFtS16FW700Cbt.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              numberFormDate((DateTime.now().add(Duration(days: index))).day),
              style: AppTextStyles.textFtS30FW900Cbt.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              dayName(DateTime.now().add(Duration(days: index))).substring(0, 3).toUpperCase(),
              style: AppTextStyles.textFtS16FW700Cbt.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}