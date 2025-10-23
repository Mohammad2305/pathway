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

TimeOfDay textToTime(String timeInput){
  int hour = 0 ;
  int minute = 0 ;
  if(timeInput.substring(5)=="AM"){
    hour = int.tryParse(timeInput.substring(0,2))??0;
  }
  else{
    hour = (int.tryParse(timeInput.substring(0,2))??0)+12;
  }
  minute = int.tryParse(timeInput.substring(3,5))??0;
  return TimeOfDay(hour: hour, minute: minute);
}

DateTime dateAndTime(DateTime date, TimeOfDay time){
  return DateTime(date.year, date.month, date.day, time.hour, time.minute);
}

bool isToday(DateTime dayDate) {
  return dayDate.year == DateTime.now().year &&
      dayDate.month == DateTime.now().month &&
      dayDate.day == DateTime.now().day;
}

bool isTomorrow(DateTime dayDate) {
  return dayDate.year == DateTime.now().year &&
      dayDate.month == DateTime.now().month &&
      dayDate.day == DateTime.now().day+1;
}

bool isYesterday(DateTime dayDate) {
  return dayDate.year == DateTime.now().year &&
      dayDate.month == DateTime.now().month &&
      dayDate.day == DateTime.now().day-1;
}

String dayState(DateTime dayDate) {
  if (isToday(dayDate)) {
    return "Today";
  } else if (isTomorrow(dayDate)) {
    return "Tomorrow";
  } else if (isYesterday(dayDate)) {
    return "yesterday";
  } else {
    return customDateForm(dayDate);
  }
}

DateTime dayDate(){
  return DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day
  );
}

