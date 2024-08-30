import 'package:et_bank/controllers/Analytics_Controller/analyticflowcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/graphs/Analytics/Analytic_generalgraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Homeanalytics extends StatefulWidget {
  Color? color;
  Color? color2;
  Homeanalytics({super.key, this.color, this.color2});

  @override
  State<Homeanalytics> createState() => _HomeanalyticsState();
}

class _HomeanalyticsState extends State<Homeanalytics> {
  final ThemeController themeController = Get.put(ThemeController());

  final AnalyticsController Controller = Get.put(AnalyticsController());

  @override
  Widget build(BuildContext context) {
    Controller.setInitialSelectedIndex(1);
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.blackBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: Column(children: [
          Container(
            width: 316.w,
            height: 39.h,
            decoration: BoxDecoration(
                color: AppColors.analyticsBox,
                borderRadius: BorderRadius.circular(28.r)),
            child: GetBuilder<AnalyticsController>(builder: (Controller) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: ListView.builder(
                  itemCount: Controller.Analyticsdays.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Controller.selectItemanadays(index);
                      },
                      child: Container(
                        height: 23.h,
                        margin: EdgeInsets.only(top: 7.h, bottom: 7.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                        ),
                        decoration: BoxDecoration(
                          color: Controller.getPageIndicatorColorAnadays(index),
                          borderRadius: BorderRadius.circular(70.r),
                        ),
                        child: Center(
                          child: Text(
                            Controller.Analyticsdays[index],
                            style: MyTextStyles.worknormal(
                              fontsize: 16.sp,
                              color:
                                  Controller.getPageIndicatorTextColorAnadays(
                                      index),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff151718),
                borderRadius: BorderRadius.circular(9.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Text(
                "- \$15.45",
                style: MyTextStyles.workfont(
                    fontsize: 20.sp,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 150.h,
            child: AnalyticsGeneralGraph(),
          ),
          // SizedBox(height: 25.h,),
          Row(children: [
            Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: AppColors.primary,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h),
              child: Text(
                "Income\n\$990",
                style: MyTextStyles.workfont(
                    fontsize: 12.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: AppColors.yellow,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h),
              child: Text(
                "Expense\n\$240",
                style: MyTextStyles.workfont(
                    fontsize: 12.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              ),
            )
          ])
        ]),
      ),
    );
  }
}
