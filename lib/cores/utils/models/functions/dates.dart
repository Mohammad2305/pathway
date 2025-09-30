import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/values/day_names_list.dart';
import 'package:pathway/cores/utils/models/values/months_list.dart';
import 'package:pathway/cores/utils/models/functions/number_form.dart';

String monthDayYear(DateTime dateTime){
  return "${months[dateTime.month-1]} ${dateTime.day}, ${dateTime.year}";
}

String dayName(DateTime dateTime){
  return dayNames[dateTime.weekday-1];
}

String customDateForm(DateTime dateTime){
  return "${dateTime.year}-${numberFormDate(dateTime.month)}-${numberFormDate(dateTime.day)}";
}

String customTimeForm(TimeOfDay time){
  int realHour = time.hour;
  String state = "AM";
  if(realHour>12){
    realHour -= 12;
    state = "PM";
  }
  return "${numberFormDate(realHour)}:${numberFormDate(time.minute)} $state";
}
