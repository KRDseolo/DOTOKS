import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../k15_page/k15_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class K18Screen extends StatelessWidget {
  K18Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Column(
            children: [
              _buildStackIphoneStatus(context),
              SizedBox(height: 44.v),
              Divider(
                indent: 11.h,
                endIndent: 10.h,
              ),
              SizedBox(height: 14.v),
              Container(
                width: 364.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 34.h,
                  vertical: 29.v,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder17,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse37,
                  height: 50.v,
                  width: 51.h,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
              ),
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
  Widget _buildStackIphoneStatus(BuildContext context) {
    return SizedBox(
      height: 82.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 14.v,
              width: 345.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDotox1,
            height: 71.v,
            width: 65.h,
            alignment: Alignment.bottomLeft,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 14.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPerson24dpFil,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(top: 3.v),
                    onTap: () {
                      onTapImgPerson24dpfil(context);
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse13,
                    height: 43.v,
                    width: 45.h,
                    radius: BorderRadius.circular(
                      21.h,
                    ),
                    margin: EdgeInsets.only(left: 15.h),
                    onTap: () {
                      onTapImgCircleimage(context);
                    },
                  )
                ],
              ),
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

  /// Navigates to the containerScreen when the action is triggered.
  onTapImgPerson24dpfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the k20Screen when the action is triggered.
  onTapImgCircleimage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k20Screen);
  }
}
