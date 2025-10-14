import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';

void showCustomBottomSheet(BuildContext context, Widget child) {
  showModalBottomSheet(
    context: context,
    builder: (context) => child,
  );

}
