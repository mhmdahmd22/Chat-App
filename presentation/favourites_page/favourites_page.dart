import '../favourites_page/widgets/favourites_item_widget.dart';
import 'bloc/favourites_bloc.dart';
import 'models/favourites_item_model.dart';
import 'models/favourites_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FavouritesBloc>(
      create: (context) => FavouritesBloc(FavouritesState(
        favouritesModelObj: FavouritesModel(),
      ))
        ..add(FavouritesInitialEvent()),
      child: FavouritesPage(),
    );
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
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimary.copyWith(
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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18.v),
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
                    title: AppbarTitle(
                      text: "lbl_favourites".tr,
                    ),
                    actions: [
                      AppbarIconbutton1(
                        svgPath: ImageConstant.imgIconprofile,
                        margin: EdgeInsets.symmetric(horizontal: 24.h),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        children: [
                          SizedBox(height: 24.v),
                          Expanded(
                            child: BlocSelector<FavouritesBloc, FavouritesState,
                                FavouritesModel?>(
                              selector: (state) => state.favouritesModelObj,
                              builder: (context, favouritesModelObj) {
                                return ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: 24.v,
                                    );
                                  },
                                  itemCount: favouritesModelObj
                                          ?.favouritesItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    FavouritesItemModel model =
                                        favouritesModelObj
                                                ?.favouritesItemList[index] ??
                                            FavouritesItemModel();
                                    return FavouritesItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: theme.colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder28,
                            ),
                            child: Container(
                              height: 142.v,
                              width: 327.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 23.h,
                                vertical: 19.v,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder28,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIconfav,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(top: 3.v),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 6.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_mars".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          Container(
                                            width: 193.h,
                                            margin: EdgeInsets.only(
                                              top: 5.v,
                                              right: 6.h,
                                            ),
                                            child: Text(
                                              "msg_mars_is_the_fourth2".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          SizedBox(height: 4.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4.v),
                                                  child: Text(
                                                    "lbl_details".tr,
                                                    style: theme
                                                        .textTheme.labelLarge,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgIconmore,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 4.h),
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
    );
  }
}
