import 'package:flutter/material.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/sections/add_task_body.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/sections/custom_app_bar.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: AddTaskBody(),
    );
  }
}
