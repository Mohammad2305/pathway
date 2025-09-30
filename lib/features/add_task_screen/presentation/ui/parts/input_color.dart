import 'package:flutter/material.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';
import '../widgets/color_filter.dart';

class InputColor extends StatelessWidget {
  const InputColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Color", style: AppTextStyles.appOrdinary),
        ColorPicker(),
      ],
    );
  }
}
