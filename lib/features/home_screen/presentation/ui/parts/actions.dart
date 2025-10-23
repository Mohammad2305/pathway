import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/ui/widgets/custom_button.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/date_info.dart';

class AppActions extends StatelessWidget {
  final void Function() onTap;
  final int currentIndex;

  const AppActions({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DateInfo(currentIndex: currentIndex,),
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
