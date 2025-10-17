import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:pathway/cores/shared/ui/widgets/custom_input.dart';
import 'package:pathway/cores/utils/models/classes/input_info.dart';
import '../../../../../cores/shared/themes/app_boxes_decoration.dart';
import '../../../../../cores/shared/ui/widgets/custom_button.dart';
import '../../../../../cores/utils/models/functions/navigators.dart';

class ChangeName extends StatelessWidget {
  final String? name;
  final bool isFirstSet;
  final void Function(String name) onTap;
  final TextEditingController setNameController;

  const ChangeName({
    super.key,
    this.name,
    required this.isFirstSet,
    required this.onTap,
    required this.setNameController,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Container(
      decoration: AppBoxDecoration.bottomSheetDecoration,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        spacing: 20.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          Form(
            key: formKey,
            child: GeneralInput(
              inputInfo: InputInfo(
                controller: setNameController,
                label: "",
                hint: isFirstSet ? "Enter your name" : name,
                validator: FormBuilderValidators.username()
              ),
            ),
          ),
          CustomButton(
            onTap: () {
              if(formKey.currentState!.validate()){
                onTap(setNameController.text);
                isFirstSet ? null : popBack(context);
              }
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Update Your name",
          ),
        ],
      ),
    );
  }
}
