import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/input_info.dart';
import '../../../../../../cores/shared/constants/app_constants.dart';
import '../../../../../../cores/utils/models/functions/dates.dart';

class AddTaskInputs {
  static InputInfo taskTitle = InputInfo(
    controller: TextEditingController(),
    label: 'Title',
    hint: 'Enter title',
    maxLength: 15,
  );

  static InputInfo taskDescription = InputInfo(
    controller: TextEditingController(),
    label: 'Description',
    hint: 'Enter description',
    maxLine: 3,
  );

  static InputInfo taskDate = InputInfo(
    controller: TextEditingController(),
    label: 'Date',
    hint: customDateForm(AppConstants.nowDateTime),
    suffixWidget: IconButton(
      onPressed: () {},
      icon: Icon(Icons.date_range_outlined),
    ),
  );

  static InputInfo taskStartTime = InputInfo(
    controller: TextEditingController(),
    label: 'Start Time',
    hint: customTimeForm(AppConstants.nowTime),
    suffixWidget: IconButton(
      onPressed: () {},
      icon: Icon(Icons.access_time_outlined),
    ),
  );

  static InputInfo taskEndTime = InputInfo(
    controller: TextEditingController(),
    label: 'End Time',
    hint: customTimeForm(AppConstants.nowTime),
    suffixWidget: IconButton(
      onPressed: () {},
      icon: Icon(Icons.access_time_outlined),
    ),
  );
}
