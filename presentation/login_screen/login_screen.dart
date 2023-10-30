import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/core/utils/validation_functions.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohamed_s_application1/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:mohamed_s_application1/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 58.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgVector,
                    height: 76.v,
                    width: 213.h,
                  ),
                  Spacer(),
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
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
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
                        horizontal: 48.h,
                        vertical: 37.v,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_sign_in".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                          SizedBox(height: 17.v),
                          BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                            selector: (state) => state.emailController,
                            builder: (context, emailController) {
                              return CustomTextFormField(
                                controller: emailController,
                                hintText: "msg_email_gmail_com".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                },
                              );
                            },
                          ),
                          SizedBox(height: 24.v),
                          BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                            selector: (state) => state.passwordController,
                            builder: (context, passwordController) {
                              return CustomTextFormField(
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: true,
                              );
                            },
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "msg_forgot_password".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(height: 21.v),
                          CustomElevatedButton(
                            text: "lbl_sign_in".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientCyanAToPrimaryTL24Decoration,
                          ),
                          SizedBox(height: 24.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.2,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 8.v,
                                  ),
                                  child: SizedBox(
                                    width: 82.h,
                                    child: Divider(),
                                  ),
                                ),
                              ),
                              Text(
                                "msg_or_sign_in_using".tr,
                                style: CustomTextStyles.bodyMediumBluegray400,
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 8.v,
                                  ),
                                  child: SizedBox(
                                    width: 82.h,
                                    child: Divider(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 23.v),
                          CustomImageView(
                            svgPath: ImageConstant.imgSocial,
                            height: 48.v,
                            width: 279.h,
                          ),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style:
                                        CustomTextStyles.bodySmallBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style:
                                        CustomTextStyles.titleSmallCyanA40001,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 43.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
