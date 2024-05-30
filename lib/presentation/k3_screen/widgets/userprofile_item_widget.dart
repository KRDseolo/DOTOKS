import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_checkbox_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  bool agreeCheckbox = false;

  bool disagreeCheckbo = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 66.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "자주 사용하는 게임이나 앱이 있나요? ",
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 40.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCheckboxButton(
                width: 51.h,
                text: "동의",
                value: agreeCheckbox,
                isRightCheck: true,
                onChange: (value) {
                  agreeCheckbox = value ?? false;
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 38.h),
                child: CustomCheckboxButton(
                  width: 65.h,
                  text: "비동의",
                  value: disagreeCheckbo,
                  isRightCheck: true,
                  onChange: (value) {
                    disagreeCheckbo = value ?? false;
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
