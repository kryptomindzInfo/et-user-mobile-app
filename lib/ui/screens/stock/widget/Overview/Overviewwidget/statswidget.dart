import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

class Statswidget extends StatelessWidget {
  const Statswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.w,
      // height: 264.h,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Market cap",
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "\$520.78B",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Text(
                  "PE Ratio",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "48.38",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Text(
                  "EPS",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "\$3.62",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Text(
                  "Dividend Yield",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "-",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Text(
                  "Beta (5Y monthly)",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "2.00",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
