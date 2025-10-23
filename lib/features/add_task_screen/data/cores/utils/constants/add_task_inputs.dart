import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../../../../cores/utils/models/classes/input_info.dart';
import '../../../../../../cores/utils/models/functions/dates.dart';

class AddTaskInputs {
  // task title properties determine
  static InputInfo taskTitle = InputInfo(
    controller: TextEditingController(),
    validator: FormBuilderValidators.required(),
    label: 'Title',
    hint: 'Enter title',
    maxLength: 15,
  );

  // task description properties determine
  static InputInfo taskDescription = InputInfo(
    controller: TextEditingController(),
    validator: FormBuilderValidators.required(),
    label: 'Description',
    hint: 'Enter description',
    maxLine: 3,
  );

  // task date properties determine
  static DateTime? dateTime;
  static InputInfo taskDate(BuildContext context) {
    TextEditingController date = TextEditingController();
    return InputInfo(
      controller: date,
      validator: FormBuilderValidators.date(),
      label: 'Date',
      hint: customDateForm(DateTime.now()),
      suffixWidget: Icon(Icons.date_range_outlined),
      readOnly: true,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(DateTime.now().year + 10),
        ).then((onValue) {
          dateTime = onValue;
          date.text = customDateForm(dateTime!);
        });
      },
    );
  }

  // task start time properties determine
  static TimeOfDay? startTime;
  static InputInfo taskStartTime(BuildContext context) {
    TextEditingController start = TextEditingController();
    return InputInfo(
      controller: start,
      validator: FormBuilderValidators.required(),
      label: 'Start Time',
      hint: customTimeForm(TimeOfDay.now()),
      suffixWidget: Icon(Icons.access_time_outlined),
      readOnly: true,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        ).then((onValue){
          startTime=onValue;
          start.text = customTimeForm(startTime??TimeOfDay.now());
        });
      },
    );
  }

  // task end time properties determine
  static TimeOfDay? endTime;
  static InputInfo taskEndTime(BuildContext context) {
    TextEditingController end = TextEditingController();
    return InputInfo(
      controller: end,
      label: 'End Time',
      validator: FormBuilderValidators.required(),
      hint: customTimeForm(TimeOfDay.now()),
      suffixWidget: Icon(Icons.access_time_outlined),
      readOnly: true,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        ).then((onValue){
          endTime=onValue;
          end.text = customTimeForm(endTime??TimeOfDay.now());
        });
      },
    );
  }

  // task color properties determine
  static int? taskColor;
}