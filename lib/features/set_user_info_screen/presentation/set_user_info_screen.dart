import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/cores/shared/ui/widgets/profile_picture.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/cores/shared/ui/widgets/change_image.dart';
import 'package:pathway/features/profile_screen/presentation/ui/widgets/change_name.dart';
import 'package:pathway/features/set_user_info_screen/presentation/ui/sections/set_user_info_body.dart';
import 'package:pathway/features/set_user_info_screen/presentation/ui/widgets/set_name.dart';
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
        child: SetUserInfoBody(),
      ),
    );
  }
}
