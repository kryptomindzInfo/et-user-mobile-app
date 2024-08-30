import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Overviewhome extends StatelessWidget {
  const Overviewhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: 214.h,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(children: [
                Text(
                  MyText.yourtoatlscore,
                  style: MyTextStyles.workfont(
                      fontsize: 20.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  MyText.onefiftyXP,
                  style: MyTextStyles.sorafont(
                      fontsize: 36.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w700),
                )
              ]),
            ),
            Row(
              children: [
                Image.asset(AppAssets.telemart, width: 30.w, height: 30.h),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.telemartonl,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      MyText.onefiftyof,
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 52.w, bottom: 0.h, top: 10.h),
              child: Container(
                width: 210.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: LinearProgressIndicator(
                  value: 0.06,
                  borderRadius: BorderRadius.circular(4.r),
                  backgroundColor: AppColors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.greenText,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            btn(
              cardText: MyText.redeem,
              cardWidth: 330.w,
              cardHeight: 48.h,
            )
          ],
        ),
      ),
    );
  }
}
