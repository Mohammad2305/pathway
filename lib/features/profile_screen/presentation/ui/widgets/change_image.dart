import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/utils/models/functions/image_choose.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import '../../../../../cores/shared/themes/app_boxes_decoration.dart';
import '../../../../../cores/shared/ui/widgets/custom_button.dart';

class ChangeImage extends StatefulWidget {
  final bool isFirstScreen;
  final void Function(String? imgPath) onTap;
  const ChangeImage({super.key, required this.isFirstScreen, required this.onTap});

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
              widget.isFirstScreen ? null : popBack(context);
              widget.onTap(await chooseCameraImage());
              },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Upload from Camera",
          ),
          CustomButton(
            onTap: () async{
              widget.isFirstScreen ? null : popBack(context);
              widget.onTap(await chooseGalleryImage());
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Upload from Gallery",
          ),
        ],
      ),
    );
  }
}
