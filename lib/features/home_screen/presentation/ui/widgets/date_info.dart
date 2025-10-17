import 'package:flutter/material.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';
import '../../../../../cores/utils/models/functions/dates.dart';

class DateInfo extends StatelessWidget {
  final int currentIndex;
  const DateInfo({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          monthDayYear(DateTime.now().add(Duration(days: currentIndex))),
          style: AppTextStyles.textFtS16FW700Cbt,
        ),
        Text(
          dayName(DateTime.now().add(Duration(days: currentIndex))),
          style: AppTextStyles.textFtS16FW700Cbt,
        ),
      ],
    );
  }
}
