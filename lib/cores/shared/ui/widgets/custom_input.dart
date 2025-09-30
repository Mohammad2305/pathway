import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_input_decoration.dart';
import 'package:pathway/cores/utils/models/functions/input_info.dart';
import '../../themes/app_text_styles.dart';

class CustomInput extends StatelessWidget {
  final InputInfo inputInfo;

  const CustomInput({super.key, required this.inputInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text(inputInfo.label, style: AppTextStyles.appOrdinary),
        TextFormField(
          controller: inputInfo.controller,
          maxLines: inputInfo.maxLine,
          maxLength: inputInfo.maxLength,
          decoration: inputDecoration(inputInfo),
        ),
      ],
    );
  }
}
