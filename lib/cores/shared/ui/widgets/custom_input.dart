import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/utils/models/functions/app_input_decoration.dart';
import '../../../utils/models/classes/input_info.dart';
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
        Text(inputInfo.label, style: AppTextStyles.textFtS14FW500Cbt),
        GeneralInput(inputInfo: inputInfo),
      ],
    );
  }
}


class GeneralInput extends StatelessWidget {
  final InputInfo inputInfo;
  const GeneralInput({super.key, required this.inputInfo});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus(); // ensures keyboard opens once sheet fully shown
    });

    return TextFormField(
      validator: inputInfo.validator,
      controller: inputInfo.controller,
      readOnly: inputInfo.readOnly ?? false,
      onTap: inputInfo.onTap,
      maxLines: inputInfo.maxLine,
      maxLength: inputInfo.maxLength,
      keyboardType: inputInfo.keyboardType ?? TextInputType.text,
      decoration: inputDecoration(inputInfo),
      onChanged: inputInfo.onChanged,
      focusNode: focusNode,
    );
  }
}
