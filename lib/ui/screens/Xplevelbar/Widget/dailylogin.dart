import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/graphs/Xplevelbar/xpleveldaliylogingraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

class dailylogin extends StatelessWidget {
  const dailylogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Text(
                        "Week 01",
                        style: MyTextStyles.sorafont(
                            fontsize: 12.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Image.asset(
                          AppAssets.icon_arrow_down,
                          width: 12.46.w,
                          height: 6.18.h,
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          MyText.yourscore,
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Expanded(
                  child: Transform.scale(
                    scale: 1.8,
                    child: Container(
                      child: DailyRadialGauge(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 35.h,
          left: 65.w,
          right: 0,
          child: Text(
            "On your daily login get 10 XP points ",
            style: MyTextStyles.sorafont(
                fontsize: 14.sp,
                color: AppColors.primaryText,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
