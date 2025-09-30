import 'package:flutter/material.dart';

class TaskMainInfo {
  TaskMainInfo({
    required this.name,
    required this.description,
    required this.dateTime,
    required this.startTime,
    required this.endTime,
    required this.taskColor,
  });

  final String name;
  final String description;
  final DateTime dateTime;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final Color taskColor;
}
