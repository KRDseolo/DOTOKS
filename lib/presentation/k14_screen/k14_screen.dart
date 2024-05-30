import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../k15_page/k15_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class K14Screen extends StatelessWidget {
  K14Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 14.v,
                width: 345.h,
                decoration: BoxDecoration(
                  color: appTheme.gray100,
                ),
              ),
              SizedBox(height: 75.v),
              _buildStackView(context),
              SizedBox(height: 24.v),
              _buildColumnTodayAppUsage(context),
              SizedBox(height: 24.v),
              _buildRowViewTwo(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 85.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgDotox1,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCarrotIllustrationFreePng,
          margin: EdgeInsets.only(
            left: 13.h,
            right: 24.h,
          ),
          onTap: () {
            onTapCarrotone(context);
          },
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse13,
          margin: EdgeInsets.fromLTRB(14.h, 4.v, 37.h, 1.v),
          onTap: () {
            onTapCircleimage(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 325.v,
      width: 379.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 42.adaptSize,
              width: 42.adaptSize,
              margin: EdgeInsets.only(
                left: 26.h,
                bottom: 18.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blue50,
                borderRadius: BorderRadius.circular(
                  21.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 325.v,
                  width: 364.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 325.v,
                          width: 364.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA70001,
                            borderRadius: BorderRadius.circular(
                              17.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 19.v,
                            right: 15.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  right: 12.h,
                                ),
                                child: _buildRowTodayAppUsage(
                                  context,
                                  appUsageText: "오늘의 챌린지︎",
                                  arrowImage: ImageConstant.imgArrowForwardI,
                                  onTapArrowImage: () {
                                    onTapArrowImage(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 25.v),
                              SizedBox(
                                width: 333.h,
                                child: Text(
                                  "“오늘이 당신의 인생에서 가장 늦지 않은 때입니다.”\n ",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .titleSmallMaruBuriOTFBluegray900,
                                ),
                              ),
                              SizedBox(height: 51.v),
                              Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Text(
                                  "스마트폰 사용 2시간 미만",
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Text(
                                  "산책 30분 다녀오기",
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "스마트폰 30분간 내려두기",
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Text(
                                  "뭉근 물 주기",
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                              SizedBox(height: 14.v),
                              CustomImageView(
                                imagePath: ImageConstant.img,
                                height: 14.v,
                                width: 74.h,
                                margin: EdgeInsets.only(left: 13.h),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowForwardI,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 395.h,
                    top: 25.v,
                    bottom: 284.v,
                  ),
                  onTap: () {
                    onTapImgArrowforwardi(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnTodayAppUsage(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowTodayAppUsage(
              context,
              appUsageText: "오늘 앱 사용량",
              arrowImage: ImageConstant.imgArrowForwardI1,
              onTapArrowImage: () {
                onTapArrowImage1(context);
              },
            ),
          ),
          SizedBox(height: 29.v),
          Row(
            children: [
              Container(
                height: 51.v,
                width: 42.h,
                margin: EdgeInsets.only(top: 1.v),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blue50,
                          borderRadius: BorderRadius.circular(
                            21.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgOnlydotox3,
                      height: 45.v,
                      width: 38.h,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "하루 평균 사용량",
                      style: CustomTextStyles.titleSmallBluegray900Bold14,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "27분",
                      style: CustomTextStyles.titleLarge23,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 17.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowViewTwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                      borderRadius: BorderRadius.circular(
                        21.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgOnlydotox3,
                  height: 45.v,
                  width: 38.h,
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          ),
          Container(
            width: 78.h,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 5.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "나의 포인트\n",
                    style: CustomTextStyles.titleSmallBluegray900,
                  ),
                  TextSpan(
                    text: "20,321",
                    style: theme.textTheme.headlineSmall,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildRowTodayAppUsage(
    BuildContext context, {
    required String appUsageText,
    required String arrowImage,
    Function? onTapArrowImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appUsageText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        CustomImageView(
          imagePath: arrowImage,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 8.v,
          ),
          onTap: () {
            onTapArrowImage?.call();
          },
        )
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Person24dpfil:
        return AppRoutes.k15Page;
      case BottomBarEnum.Barchart24dp:
        return "/";
      case BottomBarEnum.Settings24dpf:
        return "/";
      case BottomBarEnum.Notifications2:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k15Page:
        return K15Page();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the k21Screen when the action is triggered.
  onTapCarrotone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k21Screen);
  }

  /// Navigates to the k20Screen when the action is triggered.
  onTapCircleimage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k20Screen);
  }

  /// Navigates to the containerScreen when the action is triggered.
  onTapArrowImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the containerScreen when the action is triggered.
  onTapImgArrowforwardi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the k12Screen when the action is triggered.
  onTapArrowImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k12Screen);
  }
}
