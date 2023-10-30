import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
