import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../themes/app_boxes_decoration.dart";

class CircleIcon extends StatelessWidget {
  final double radius;
  final Widget child;
  const CircleIcon({super.key, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: AppBoxDecoration.profile(2.r),
      height: radius,
      width: radius,
      child: child,
    );
  }
}
