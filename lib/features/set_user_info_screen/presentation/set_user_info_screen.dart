import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/set_user_info_screen/presentation/ui/sections/set_user_info_body.dart';
import '../../home_screen/presentation/home_screen.dart';

class SetUserInfoScreen extends StatelessWidget {
  const SetUserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
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
        child: Center(child: SingleChildScrollView(child: SetUserInfoBody())),
      ),
    );
  }
}
