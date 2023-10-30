import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
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
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 39.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.black900,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder148),
                                child: Container(
                                    height: 296.adaptSize,
                                    width: 296.adaptSize,
                                    decoration: AppDecoration.fillBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder148),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Opacity(
                                              opacity: 0.3,
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 288.adaptSize,
                                                      width: 288.adaptSize,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  144.h),
                                                          border: Border.all(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimaryContainer,
                                                              width: 1.h))))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: 296.adaptSize,
                                                  width: 296.adaptSize,
                                                  child:
                                                      CircularProgressIndicator(
                                                          value: 0.5,
                                                          backgroundColor: theme
                                                              .colorScheme
                                                              .onPrimaryContainer
                                                              .withOpacity(1),
                                                          color: appTheme
                                                              .cyanA40001))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgLogo,
                                              height: 76.v,
                                              width: 213.h,
                                              alignment: Alignment.center)
                                        ]))),
                            SizedBox(height: 154.v),
                            CustomImageView(
                                svgPath: ImageConstant.imgFlutterlogo,
                                height: 32.v,
                                width: 111.h)
                          ])))));
    });
  }
}
