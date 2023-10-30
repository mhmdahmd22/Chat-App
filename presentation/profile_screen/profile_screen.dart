import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_checkbox_button.dart';
import 'package:mohamed_s_application1/widgets/custom_switch.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplash),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 18.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder28),
                          child: CustomAppBar(
                              leadingWidth: 72.h,
                              leading: AppbarIconbutton(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: EdgeInsets.only(left: 24.h),
                                  onTap: () {
                                    onTapArrowleftone(context);
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_my_profile".tr))),
                      Container(
                          padding: EdgeInsets.all(24.h),
                          child: Column(children: [
                            Container(
                                decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder28),
                                child: OutlineGradientButton(
                                    padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v),
                                    strokeWidth: 1.h,
                                    gradient: LinearGradient(
                                        begin: Alignment(0.96, 0.96),
                                        end: Alignment(0.19, 0.04),
                                        colors: [
                                          appTheme.black900.withOpacity(0.3),
                                          appTheme.black900.withOpacity(0),
                                          theme.colorScheme.onPrimaryContainer
                                              .withOpacity(0.2)
                                        ]),
                                    corners: Corners(
                                        topLeft: Radius.circular(28),
                                        topRight: Radius.circular(28),
                                        bottomLeft: Radius.circular(28),
                                        bottomRight: Radius.circular(28)),
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 17.h, vertical: 21.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height: 64.adaptSize,
                                                  width: 64.adaptSize,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 3.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage16,
                                                            height:
                                                                64.adaptSize,
                                                            width: 64.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(32.h),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 64
                                                                    .adaptSize,
                                                                width: 64
                                                                    .adaptSize,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(32
                                                                                .h),
                                                                        gradient: LinearGradient(
                                                                            begin: Alignment(0.91,
                                                                                0.09),
                                                                            end:
                                                                                Alignment(0.1, 0.93),
                                                                            colors: [
                                                                              appTheme.cyanA400,
                                                                              theme.colorScheme.secondaryContainer,
                                                                              theme.colorScheme.primary
                                                                            ]))))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.h,
                                                      top: 14.v,
                                                      bottom: 14.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_Niel_Armstrong"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumOnPrimaryContainer),
                                                        SizedBox(height: 6.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "msg_first_man_on_moon"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall))
                                                      ])),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEditOnprimarycontainer,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      right: 4.h, bottom: 46.v))
                                            ])))),
                            SizedBox(height: 24.v),
                            OutlineGradientButton(
                                padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 1.v,
                                    right: 1.h,
                                    bottom: 1.v),
                                strokeWidth: 1.h,
                                gradient: LinearGradient(
                                    begin: Alignment(0.96, 0.96),
                                    end: Alignment(0.19, 0.04),
                                    colors: [
                                      appTheme.black900.withOpacity(0.3),
                                      appTheme.black900.withOpacity(0),
                                      theme.colorScheme.onPrimaryContainer
                                          .withOpacity(0.2)
                                    ]),
                                corners: Corners(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28),
                                    bottomLeft: Radius.circular(28),
                                    bottomRight: Radius.circular(28)),
                                child: Container(
                                    width: 327.h,
                                    padding: EdgeInsets.all(24.h),
                                    decoration: AppDecoration.outline.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder28),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 69.h),
                                              child: Row(children: [
                                                BlocSelector<ProfileBloc,
                                                        ProfileState, bool?>(
                                                    selector: (state) =>
                                                        state.isSelectedSwitch,
                                                    builder: (context,
                                                        isSelectedSwitch) {
                                                      return CustomSwitch(
                                                          value:
                                                              isSelectedSwitch,
                                                          onChange: (value) {
                                                            context
                                                                .read<
                                                                    ProfileBloc>()
                                                                .add(ChangeSwitchEvent(
                                                                    value:
                                                                        value));
                                                          });
                                                    }),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h, top: 5.v),
                                                    child: Text(
                                                        "msg_show_planetary_progress"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .titleSmall))
                                              ])),
                                          SizedBox(height: 32.v),
                                          SizedBox(
                                              height: 260.adaptSize,
                                              width: 260.adaptSize,
                                              child: CircularProgressIndicator(
                                                  value: 0.5,
                                                  strokeWidth: 16.h)),
                                          SizedBox(height: 32.v),
                                          BlocSelector<ProfileBloc,
                                                  ProfileState, bool?>(
                                              selector: (state) =>
                                                  state.planetRating,
                                              builder: (context, planetRating) {
                                                return CustomCheckboxButton(
                                                    text:
                                                        "msg_show_me_in_planet"
                                                            .tr,
                                                    value: planetRating,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.v),
                                                    onChange: (value) {
                                                      context
                                                          .read<ProfileBloc>()
                                                          .add(
                                                              ChangeCheckBoxEvent(
                                                                  value:
                                                                      value));
                                                    });
                                              }),
                                          SizedBox(height: 32.v),
                                          BlocSelector<ProfileBloc,
                                                  ProfileState, bool?>(
                                              selector: (state) =>
                                                  state.notificationsva,
                                              builder:
                                                  (context, notificationsva) {
                                                return CustomCheckboxButton(
                                                    text:
                                                        "lbl_notifications".tr,
                                                    value: notificationsva,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 3.v),
                                                    onChange: (value) {
                                                      context
                                                          .read<ProfileBloc>()
                                                          .add(
                                                              ChangeCheckBox1Event(
                                                                  value:
                                                                      value));
                                                    });
                                              }),
                                          SizedBox(height: 24.v)
                                        ])))
                          ]))
                    ])))));
  }

  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
