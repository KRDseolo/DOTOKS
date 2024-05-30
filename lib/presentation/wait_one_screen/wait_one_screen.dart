import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class WaitOneScreen extends StatelessWidget {
  const WaitOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              Container(
                height: 14.v,
                width: 345.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70001,
                ),
              ),
              Spacer(),
              Container(
                width: 301.h,
                margin: EdgeInsets.only(
                  left: 25.h,
                  right: 18.h,
                ),
                child: Text(
                  "AI 가 당신의 패턴을 \n   분석하고 있습니다...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 56.v),
              Text(
                "1코스 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 58.v),
              Text(
                "2코스 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 58.v),
              Text(
                "3코스 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 57.v),
              Text(
                "중독 등급 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 80.v)
            ],
          ),
        ),
      ),
    );
  }
}
