import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/utils/models/functions/image_choose.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import '../../themes/app_boxes_decoration.dart';
import 'custom_button.dart';

class ChangeImage extends StatefulWidget {
  final void Function(String? imgPath) onTap;
  final bool isFirstSet;
  const ChangeImage({super.key, required this.onTap, required this.isFirstSet});

  @override
  State<ChangeImage> createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
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
          CustomButton(
            onTap: () async{
              widget.onTap(await chooseCameraImage());
              widget.isFirstSet ? null : popBack(context);
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Upload from Camera",
          ),
          CustomButton(
            onTap: () async{
              widget.onTap(await chooseGalleryImage());
              widget.isFirstSet ? null : popBack(context);
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Upload from Gallery",
          ),
        ],
      ),
    );
  }
}
