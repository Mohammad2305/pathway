import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/date_filter_item.dart';

class DateFilter extends StatelessWidget {
  final DateTime dateTime;
  final int selectedIndex;
  const DateFilter({super.key, required this.dateTime, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 130.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return DateFilterItem(dateTime: dateTime, index: index, selectedIndex: selectedIndex,);
        },
        separatorBuilder: (context, index)=> SizedBox(width: 10.w,),
      ),
    );
  }
}
