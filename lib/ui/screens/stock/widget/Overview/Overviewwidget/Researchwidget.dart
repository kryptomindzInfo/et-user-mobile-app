import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Morningresearch extends StatefulWidget {
  const Morningresearch({super.key});

  @override
  State<Morningresearch> createState() => _MorningresearchState();
}

class _MorningresearchState extends State<Morningresearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.w,
      height: 302.h,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                MyText.basedon,
                style: MyTextStyles.workfont(
                    fontsize: 16.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  MyText.strongbuy,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Container(
                  width: 207.w,
                  height: 19.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.2,
                    borderRadius: BorderRadius.circular(4
                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                    backgroundColor: AppColors.greyText2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primary), // Color of the progress indicator
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  "10%",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Buy",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 60.h,
                ),
                Container(
                  width: 207.w,
                  height: 19.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.4,
                    borderRadius: BorderRadius.circular(4
                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                    backgroundColor: AppColors.greyText2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.greenText), // Color of the progress indicator
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  "20%",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Hold",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 54.h,
                ),
                Container(
                  width: 207.w,
                  height: 19.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    borderRadius: BorderRadius.circular(4
                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                    backgroundColor: AppColors.greyText2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.qrbgcolor), // Color of the progress indicator
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  "40%",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Sell",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 60.h,
                ),
                Container(
                  width: 207.w,
                  height: 19.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.1,
                    borderRadius: BorderRadius.circular(4
                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                    backgroundColor: AppColors.greyText2,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.yellow), // Color of the progress indicator
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  "05%",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Strong Sell",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 7.h,
                ),
                Container(
                  width: 207.w,
                  height: 19.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.3,
                    borderRadius: BorderRadius.circular(4
                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                    backgroundColor: AppColors.greyText2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.qrbgcolor), // Color of the progress indicator
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  "05%",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 MyText.notadvicesec,
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.greyText2  ,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "report. ",
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.greyText2  ,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Learn more.",
                  textAlign: TextAlign.center,
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
