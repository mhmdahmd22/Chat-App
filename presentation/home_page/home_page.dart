import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 17.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder28,
                    ),
                    child: CustomAppBar(
                      leadingWidth: 72.h,
                      leading: AppbarIconbutton(
                        svgPath: ImageConstant.imgIconsettings,
                        margin: EdgeInsets.only(left: 24.h),
                      ),
                      centerTitle: true,
                      title: Column(
                        children: [
                          AppbarSubtitle(
                            text: "lbl_milky_way".tr,
                            margin: EdgeInsets.symmetric(horizontal: 51.h),
                          ),
                          AppbarTitle(
                            text: "lbl_solar_system".tr,
                          ),
                        ],
                      ),
                      actions: [
                        AppbarIconbutton1(
                          svgPath: ImageConstant.imgIconprofile,
                          margin: EdgeInsets.symmetric(horizontal: 24.h),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 610.v,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 20.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 24.h,
                              right: 24.h,
                              bottom: 4.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgSplash,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 1.v,
                                    right: 1.h,
                                    bottom: 1.v,
                                  ),
                                  strokeWidth: 1.h,
                                  gradient: LinearGradient(
                                    begin: Alignment(0.96, 0.96),
                                    end: Alignment(0.19, 0.04),
                                    colors: [
                                      appTheme.black900.withOpacity(0.3),
                                      appTheme.black900.withOpacity(0),
                                      theme.colorScheme.onPrimaryContainer
                                          .withOpacity(0.2),
                                    ],
                                  ),
                                  corners: Corners(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28),
                                    bottomLeft: Radius.circular(28),
                                    bottomRight: Radius.circular(28),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24.h,
                                      vertical: 19.v,
                                    ),
                                    decoration: AppDecoration.outline.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder28,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        Text(
                                          "msg_planet_of_the_day".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryContainer,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 16.v,
                                            right: 5.h,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 60.adaptSize,
                                                width: 60.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 81.v),
                                                decoration:
                                                    AppDecoration.outlineGray,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLicensedimage,
                                                      height: 60.adaptSize,
                                                      width: 60.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                        30.h,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height: 60.adaptSize,
                                                        width: 60.adaptSize,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            30.h,
                                                          ),
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment(
                                                                0.91, 0.09),
                                                            end: Alignment(
                                                                0.1, 0.93),
                                                            colors: [
                                                              appTheme.cyanA400,
                                                              theme.colorScheme
                                                                  .secondaryContainer,
                                                              theme.colorScheme
                                                                  .primary,
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.h),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "lbl_mars".tr,
                                                        style: theme.textTheme
                                                            .titleMedium,
                                                      ),
                                                      SizedBox(height: 5.v),
                                                      SizedBox(
                                                        width: 200.h,
                                                        child: Text(
                                                          "msg_mars_is_the_fourth"
                                                              .tr,
                                                          maxLines: 6,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4.v),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          4.v),
                                                              child: Text(
                                                                "lbl_details"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgIconmore,
                                                              height:
                                                                  24.adaptSize,
                                                              width:
                                                                  24.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 26.v),
                                OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 1.v,
                                    right: 1.h,
                                    bottom: 1.v,
                                  ),
                                  strokeWidth: 1.h,
                                  gradient: LinearGradient(
                                    begin: Alignment(0.96, 0.96),
                                    end: Alignment(0.19, 0.04),
                                    colors: [
                                      appTheme.black900.withOpacity(0.3),
                                      appTheme.black900.withOpacity(0),
                                      theme.colorScheme.onPrimaryContainer
                                          .withOpacity(0.2),
                                    ],
                                  ),
                                  corners: Corners(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28),
                                    bottomLeft: Radius.circular(28),
                                    bottomRight: Radius.circular(28),
                                  ),
                                  child: Container(
                                    width: 327.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24.h,
                                      vertical: 22.v,
                                    ),
                                    decoration: AppDecoration.outline.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder28,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_solar_system".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryContainer,
                                        ),
                                        Container(
                                          width: 268.h,
                                          margin: EdgeInsets.only(
                                            top: 11.v,
                                            right: 8.h,
                                          ),
                                          child: Text(
                                            "msg_the_solar_system_c".tr,
                                            maxLines: 12,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(
                              left: 24.h,
                              bottom: 522.v,
                            ),
                            child: IntrinsicWidth(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.h,
                                        vertical: 12.v,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            decoration:
                                                AppDecoration.outlineGray,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLicensedimage24x24,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    12.h,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        12.h,
                                                      ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                            0.91, 0.09),
                                                        end: Alignment(
                                                            0.1, 0.93),
                                                        colors: [
                                                          appTheme.cyanA400,
                                                          theme.colorScheme
                                                              .secondaryContainer,
                                                          theme.colorScheme
                                                              .primary,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 5.v,
                                              bottom: 3.v,
                                            ),
                                            child: Text(
                                              "lbl_mercury".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ),
                                          Container(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(left: 40.h),
                                            decoration:
                                                AppDecoration.outlineGray,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLicensedimage1,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    12.h,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        12.h,
                                                      ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                            0.91, 0.09),
                                                        end: Alignment(
                                                            0.1, 0.93),
                                                        colors: [
                                                          appTheme.cyanA400,
                                                          theme.colorScheme
                                                              .secondaryContainer,
                                                          theme.colorScheme
                                                              .primary,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 4.v,
                                              bottom: 4.v,
                                            ),
                                            child: Text(
                                              "lbl_venus".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ),
                                          Container(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(left: 40.h),
                                            decoration:
                                                AppDecoration.outlineGray,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLicensedimage2,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    12.h,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        12.h,
                                                      ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                            0.91, 0.09),
                                                        end: Alignment(
                                                            0.1, 0.93),
                                                        colors: [
                                                          appTheme.cyanA400,
                                                          theme.colorScheme
                                                              .secondaryContainer,
                                                          theme.colorScheme
                                                              .primary,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 4.v,
                                              bottom: 4.v,
                                            ),
                                            child: Text(
                                              "lbl_earth".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 90.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    decoration: AppDecoration.outline1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder24,
                                    ),
                                    child: OutlineGradientButton(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v,
                                      ),
                                      strokeWidth: 1.h,
                                      gradient: LinearGradient(
                                        begin: Alignment(0.96, 0.96),
                                        end: Alignment(0.19, 0.04),
                                        colors: [
                                          appTheme.black900.withOpacity(0.3),
                                          appTheme.black900.withOpacity(0),
                                          theme.colorScheme.onPrimaryContainer
                                              .withOpacity(0.2),
                                        ],
                                      ),
                                      corners: Corners(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                        bottomLeft: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 14.h,
                                          vertical: 12.v,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              decoration:
                                                  AppDecoration.outlineGray,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgLicensedimage3,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                      12.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          12.h,
                                                        ),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment(
                                                              0.91, 0.09),
                                                          end: Alignment(
                                                              0.1, 0.93),
                                                          colors: [
                                                            appTheme.cyanA400,
                                                            theme.colorScheme
                                                                .secondaryContainer,
                                                            theme.colorScheme
                                                                .primary,
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 8.h,
                                                top: 5.v,
                                                bottom: 5.v,
                                              ),
                                              child: Text(
                                                "lbl_earth".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
