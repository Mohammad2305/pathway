import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

DateTime textToDate(String? dateInput){
  if (dateInput == null || dateInput.trim().isEmpty) {
    // default fallback (e.g., now)
    return DateTime.now();
  }
  try {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    DateTime date = dateFormat.parseStrict(dateInput.trim());
    return date;
  } catch (e) {
    print("⚠️ Failed to parse date: '$dateInput' -> $e");
    // fallback to now or custom default
    return DateTime.now();
  }
}

TimeOfDay textToTime(String? timeInput){
  if (timeInput == null || timeInput.trim().isEmpty) {
    // default fallback (e.g., now)
    return TimeOfDay.now();
  }
  try {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    DateTime time = dateFormat.parseStrict(timeInput.trim());
    return TimeOfDay(hour: time.hour, minute: time.minute);
  } catch (e) {
    print("⚠️ Failed to parse date: '$timeInput' -> $e");
    // fallback to now or custom default
    return TimeOfDay.now();
  }
}
/*
TimeOfDay textToTime(String timeInput){
  return TimeOfDay(
    hour: textToInt(getClock(timeInput, 1)??"0"),
    minute: textToInt(getClock(timeInput, 2)??"0")
    // hour: int.tryParse(timeInput??"")??AppConstants.nowTime.hour,
    // minute: int.tryParse(timeInput??"")??AppConstants.nowTime.minute
  );
}
*/