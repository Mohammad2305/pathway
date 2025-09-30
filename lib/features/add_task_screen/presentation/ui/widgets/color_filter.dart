import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/app_colors.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key,});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.w,
      child: ListView.separated(
        itemCount: colors.length,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: colors[index],
                ),
                selectedIndex==index ? Icon(Icons.check, color: Colors.white,) : SizedBox.shrink(),
              ],
            ),
          );
        },
        separatorBuilder: (context, index)=> SizedBox(width: 10.w,),
      ),
    );
  }
}