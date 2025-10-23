import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/set_user_info_screen/presentation/ui/sections/set_user_info_body.dart';
import '../../home_screen/presentation/home_screen.dart';

class SetUserInfoScreen extends StatefulWidget {
  const SetUserInfoScreen({super.key});

  @override
  State<SetUserInfoScreen> createState() => _SetUserInfoScreenState();
}

class _SetUserInfoScreenState extends State<SetUserInfoScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if(formKey.currentState!.validate()){
                pushReplacementTo(context, HomeScreen());
              }
            },
            child: Align(alignment: Alignment.topRight, child: Text("Done")),
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(child: SetUserInfoBody()),
      ),
    );
  }
}
