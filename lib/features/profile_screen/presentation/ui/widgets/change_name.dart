import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/ui/widgets/custom_input.dart';
import 'package:pathway/cores/utils/models/classes/input_info.dart';
import '../../../../../cores/shared/themes/app_boxes_decoration.dart';
import '../../../../../cores/shared/ui/widgets/custom_button.dart';
import '../../../../../cores/utils/models/functions/navigators.dart';

class ChangeName extends StatefulWidget {
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
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
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
              label: "",
              hint: widget.isFirstSet ? "Enter your name" : widget.name,
            ),
          ),
          CustomButton(
            onTap: () {
              widget.onTap(widget.setNameController.text);
              widget.isFirstSet ? null : popBack(context);
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Update Your name",
          ),
        ],
      ),
    );
  }
}
