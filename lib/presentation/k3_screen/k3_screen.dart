import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/userprofile_item_widget.dart';

class K3Screen extends StatelessWidget {
  const K3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildColumniphonesta(context),
              SizedBox(height: 37.v),
              _buildUserprofile(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildTf(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumniphonesta(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 14.v,
            width: 345.h,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 113.h),
              child: Text(
                "질문  6/30",
                style: theme.textTheme.headlineLarge,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 18.h,
            ),
            child: Container(
              height: 14.v,
              width: 341.h,
              decoration: BoxDecoration(
                color: appTheme.gray800,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.2,
                  backgroundColor: appTheme.gray800,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Divider(
            endIndent: 10.h,
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserprofile(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.5.v),
              child: SizedBox(
                width: 371.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: theme.colorScheme.primary,
                ),
              ),
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return UserprofileItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      text: "다음",
      margin: EdgeInsets.only(
        left: 11.h,
        right: 11.h,
        bottom: 17.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineSmallWhiteA70001,
    );
  }
}
