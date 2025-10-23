import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../cores/shared/themes/app_boxes_decoration.dart';
import '../../../../../cores/shared/ui/widgets/custom_input.dart';
import '../../../../../cores/utils/models/classes/input_info.dart';

class SetName extends StatefulWidget {
  final String? name;
  final void Function(String name) onTap;
  final TextEditingController setNameController;

  const SetName({
    super.key,
    this.name,
    required this.onTap,
    required this.setNameController,
  });

  @override
  State<SetName> createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration.bottomSheetDecoration,
      width: double.infinity,
      padding: EdgeInsets.all(20.sp),
      child: Column(
        spacing: 20.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          GeneralInput(
            inputInfo: InputInfo(
              controller: widget.setNameController,
              validator: FormBuilderValidators.required(),
              label: "",
              hint: "Enter your name",
              // onTap: () {widget.onTap(widget.setNameController.text);},
              onChanged: (value){widget.onTap(value);}
            ),
          ),
        ],
      ),
    );
  }
}
