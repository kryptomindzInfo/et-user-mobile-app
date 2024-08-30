import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/homescreens/widget/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTransactionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: 126.h,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Transaction(
              imageAsset: AppAssets.netflix,
              title: "Netflix",
              subtitle: MyText.NetflixTIME,
              cost: "-£3.9",
              costType: "Subscription",
            ),
            SizedBox(
              height: 2.h,
            ),
            Transaction(
              imageAsset: AppAssets.figma,
              title: "Figma",
              subtitle: MyText.figmaTIME,
              cost: "-£5.9",
              costType: "Subscription",
            ),
          ],
        ),
      ),
    );
  }
}
