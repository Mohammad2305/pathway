import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/date_filter_item.dart';

class DateFilter extends StatefulWidget {
  final void Function(int) onChange;

  const DateFilter({super.key, required this.onChange});

  @override
  State<DateFilter> createState() => _DateFilterState();
}

class _DateFilterState extends State<DateFilter> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return DateFilterItem(
          index: index,
          selectedIndex: selectedIndex,
          onTap: (){
            setState(() {
              selectedIndex = index;
              widget.onChange(selectedIndex);
            });
          },
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 10.w),
    );
  }
}