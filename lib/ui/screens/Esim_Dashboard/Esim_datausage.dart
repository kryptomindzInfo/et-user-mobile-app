import 'package:et_bank/controllers/Esimdashboardcontroller/esimdashboardcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Esim_Dashboard/graph/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Esimdatausage extends StatefulWidget {
  Esimdatausage({super.key});

  @override
  State<Esimdatausage> createState() => _EsimdatausageState();
}

class _EsimdatausageState extends State<Esimdatausage> {
  final ThemeController themeController = Get.put(ThemeController());

  final EsimDataUsageController controller = Get.put(EsimDataUsageController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  AppAssets.leftarrow,
                  color: AppColors.primaryText,
                ),
              ),
            ),
            title: Text(
              "Data Usage",
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.soraFamily),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.selectMonth();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: controller.isMonthSelected.value
                              ? AppColors.activeTabButtons
                              : AppColors.inActiveTabButtons2,
                          borderRadius: BorderRadius.circular(70.r),
                        ),
                        child: Center(
                            child: Text(
                          "Month",
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: controller.isMonthSelected.value
                                  ? AppColors.blackColor
                                  : AppColors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    GestureDetector(
                      onTap: () {
                        controller.selectDay();
                      },
                      child: Container(
                        width: 100.w,
                        height: 39.h,
                        decoration: BoxDecoration(
                          color: controller.isDaySelected.value
                              ? AppColors.activeTabButtons
                              : AppColors.inActiveTabButtons2,
                          borderRadius: BorderRadius.circular(70.r),
                        ),
                        child: Center(
                            child: Text(
                          "Day",
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: controller.isDaySelected.value
                                  ? AppColors.blackColor
                                  : AppColors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.w, top: 20.h),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.arrow,
                        width: 4.97.w,
                        height: 9.94.h,
                        color: AppColors.primaryText,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text(
                          "Today",
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Image.asset(
                        AppAssets.icon_arrow_forward,
                        width: 4.97.w,
                        height: 9.94.h,
                        color: AppColors.primaryText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 336.w,
                  height: 180.h,
                  child: LineChartWidget(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 349.w,
                  height: 347.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.w, 25.h, 10.w, 25.h),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.netflix,
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Netflix",
                                  style: MyTextStyles.workfont(
                                      fontsize: 14.sp,
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "33.42 MB",
                                  style: MyTextStyles.worknormal(
                                    fontsize: 12.sp,
                                    color: AppColors.greyText2,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  width: 267.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 1.0,
                                    borderRadius: BorderRadius.circular(4
                                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                                    backgroundColor: AppColors.greyText2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        AppColors.greenText
                                            ), // Color of the progress indicator
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.w),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.figma,
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Figma",
                                  style: MyTextStyles.workfont(
                                      fontsize: 14.sp,
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "14.72 MB",
                                  style: MyTextStyles.worknormal(
                                    fontsize: 12.sp,
                                    color: AppColors.greyText2,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  width: 267.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    borderRadius: BorderRadius.circular(4
                                        .r), // Change this value to represent different percentages (from 0.0 to 1.0)
                                    backgroundColor: AppColors.greyText2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        AppColors.greenText), // Color of the progress indicator
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.w),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.whatsappdatausage,
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "WhatsApp",
                                  style: MyTextStyles.workfont(
                                      fontsize: 14.sp,
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "10.12 MB",
                                  style: MyTextStyles.worknormal(
                                    fontsize: 12.sp,
                                    color: AppColors.greyText2,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  width: 267.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.4,
                                    borderRadius: BorderRadius.circular(4.r),
                                    backgroundColor: AppColors.greyText2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        AppColors.greenText), // Color of the progress indicator
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.w),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.facebookdatausage,
                              width: 40.w,
                              height: 40.h,
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "WhatsApp",
                                  style: MyTextStyles.workfont(
                                      fontsize: 14.sp,
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "10.12 MB",
                                  style: MyTextStyles.worknormal(
                                    fontsize: 12.sp,
                                    color: AppColors.greyText2,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  width: 267.w,
                                  height: 4.h,
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
