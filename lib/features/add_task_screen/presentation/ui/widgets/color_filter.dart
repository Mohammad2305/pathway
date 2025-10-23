import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/app_colors.dart';

class ColorPicker extends StatefulWidget {
  final void Function(int color) onTap;
  const ColorPicker({super.key, required this.onTap, });

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

int selectedIndex = 0 ;

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.w,
      child: ListView.separated(
        itemCount: colors.length,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              setState(() {
                if(selectedIndex!=index){
                  selectedIndex = index;
                }
                widget.onTap(colors[selectedIndex]);
              });
            },
            child: CircleAvatar(
              backgroundColor: Color(colors[index]),
              child: selectedIndex==index ? Icon(Icons.check, color: Colors.white,) : SizedBox.shrink(),
            ),
          );
        },
        separatorBuilder: (context, index)=> SizedBox(width: 10.w,),
      ),
    );
  }
}