import 'package:pathway/cores/shared/values/day_names_list.dart';
import 'package:pathway/cores/shared/values/months_list.dart';

String monthDayYear(DateTime dateTime){
  return "${months[dateTime.month-1]} ${dateTime.day}, ${dateTime.year}";
}

String dayName(DateTime dateTime){
  return dayNames[dateTime.weekday-1];
}
