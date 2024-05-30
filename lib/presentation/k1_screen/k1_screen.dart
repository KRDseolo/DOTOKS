import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class K1Screen extends StatelessWidget {
  K1Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController tfController = TextEditingController();

  TextEditingController enterpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  children: [
                    Container(
                      height: 14.v,
                      width: 345.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA70001,
                      ),
                    ),
                    Spacer(
                      flex: 46,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "디톡스를 시작해봐요!",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.v),
                    CustomTextFormField(
                      controller: tfController,
                      hintText: "이메일 또는 닉네임을 입력하세요",
                    ),
                    SizedBox(height: 48.v),
                    CustomTextFormField(
                      controller: enterpasswordController,
                      hintText: "비밀번호 입력",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 22.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgInvisible1,
                          height: 17.adaptSize,
                          width: 17.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 62.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        left: 24.h,
                        top: 22.v,
                        bottom: 22.v,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Text(
                          "아직 계정이 없습니다",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 46.v),
                    CustomElevatedButton(
                      text: "로그인",
                      onPressed: () {
                        onTaptf(context);
                      },
                    ),
                    SizedBox(height: 77.v),
                    Text(
                      "SNS 계정으로 가입하기",
                      style: CustomTextStyles.titleMediumGray400.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 26.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: CustomIconButton(
                            height: 41.adaptSize,
                            width: 41.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFacebook,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 1.v,
                            bottom: 4.v,
                          ),
                          child: CustomIconButton(
                            height: 36.v,
                            width: 35.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: CustomIconButton(
                            height: 41.adaptSize,
                            width: 41.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGoogle,
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(
                      flex: 53,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the k2Screen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k2Screen);
  }
}
