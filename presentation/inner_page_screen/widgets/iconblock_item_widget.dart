import '../models/iconblock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class IconblockItemWidget extends StatelessWidget {
  IconblockItemWidget(
    this.iconblockItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IconblockItemModel iconblockItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 49.h,
      child: Column(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgUser,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 45.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_mass".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "lbl_10".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "lbl_24".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "lbl_kg".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 3.v),
          Text(
            iconblockItemModelObj.value!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
