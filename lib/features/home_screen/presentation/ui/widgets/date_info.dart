import 'package:flutter/material.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';
import '../../../../../cores/utils/models/functions/dates.dart';

class DateInfo extends StatelessWidget {
  final DateTime dateTime;
  const DateInfo({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          monthDayYear(dateTime),
          style: AppTextStyles.actions,
        ),
        Text(
          dayName(dateTime),
          style: AppTextStyles.actions,
        ),
      ],
    );
  }
}
