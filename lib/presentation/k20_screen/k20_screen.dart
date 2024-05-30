import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class K20Screen extends StatelessWidget {
  const K20Screen({Key? key})
      : super(
          key: key,
        );

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
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 44.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      indent: 8.h,
                      endIndent: 7.h,
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 47.v,
                          width: 48.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img40x40,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 47.v,
                                    width: 48.h,
                                    decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 8.v,
                            bottom: 14.v,
                          ),
                          child: Text(
                            "사용자 정보 변경",
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 74.v),
                    Divider(
                      indent: 8.h,
                      endIndent: 7.h,
                    ),
                    SizedBox(height: 15.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 47.v,
                          width: 48.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img1,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 47.v,
                                    width: 48.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.gray10090,
                                          theme.colorScheme.onPrimary
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 9.v,
                            bottom: 13.v,
                          ),
                          child: Text(
                            "도톡스 테마 변경",
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 24.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 47.v,
                          width: 48.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img41x41,
                                height: 41.adaptSize,
                                width: 41.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 47.v,
                                    width: 48.h,
                                    decoration: BoxDecoration(
                                      color:
                                          appTheme.amber500.withOpacity(0.56),
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 8.v,
                            bottom: 14.v,
                          ),
                          child: Text(
                            "완료한 챌린지 확인하기",
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 28.v),
                    Row(
                      children: [
                        SizedBox(
                          height: 47.v,
                          width: 48.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img38x35,
                                height: 38.v,
                                width: 35.h,
                                alignment: Alignment.center,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 47.v,
                                    width: 48.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.whiteA70001
                                          .withOpacity(0.56),
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 11.v,
                            bottom: 11.v,
                          ),
                          child: Text(
                            "도톡스 아이디 변경하기",
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 28.v),
                    Padding(
                      padding: EdgeInsets.only(right: 105.h),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 47.v,
                            width: 48.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img35x35,
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 47.v,
                                      width: 48.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.whiteA70001
                                            .withOpacity(0.56),
                                        borderRadius: BorderRadius.circular(
                                          10.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              top: 11.v,
                              bottom: 11.v,
                            ),
                            child: Text(
                              "도톡스 비밀번호 변경하기",
                              style: theme.textTheme.titleLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 28.v),
                    Row(
                      children: [
                        SizedBox(
                          height: 47.v,
                          width: 48.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img37x37,
                                height: 37.adaptSize,
                                width: 37.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 47.v,
                                    width: 48.h,
                                    decoration: BoxDecoration(
                                      color:
                                          appTheme.purple700.withOpacity(0.56),
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 11.v,
                            bottom: 11.v,
                          ),
                          child: Text(
                            "나의 정보 확인하기",
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 26.v),
                    Divider(
                      indent: 4.h,
                      endIndent: 11.h,
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 71.v,
      leadingWidth: 85.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgDotox1,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPerson24dpFil,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 6.v,
            right: 25.h,
          ),
          onTap: () {
            onTapPerson24dpfil(context);
          },
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse13,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 3.v,
            right: 38.h,
          ),
        )
      ],
    );
  }

  /// Navigates to the containerScreen when the action is triggered.
  onTapPerson24dpfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }
}
