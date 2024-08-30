import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:et_bank/ui/screens/stock/letgetstarted.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(Profile());
                },
                child: Image.asset(
                  AppAssets.appbar1,
                  width: 34.w,
                  height: 34.h,
                ),
              ),
            ),
            centerTitle: true,
            title: Text(
              "Stocks",
              style: MyTextStyles.sora5(
                fontsize: 16.sp,
                color: AppColors.primaryText,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Image.asset(
                  AppAssets.notifi,
                  width: 19.44.w,
                  height: 25.27.h,
                  color: AppColors.primaryText,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                SearchBarWidget(
                  hintText: "Home",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 349.w,
                  height: 375.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.r),
                    color: AppColors.greyBox2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 349.w,
                        height: 365.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.r),
                          // color: AppColors.greyBox,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 284.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.greenBox,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(21.r),
                                  topRight: Radius.circular(21.r),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 80.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            MyText.investstock,
                                            style: MyTextStyles.sora(
                                              fontsize: 32.sp,
                                              color: AppColors.blackColor,
                                            ),
                                          ),
                                          Text(
                                            MyText.Capitalatrisk2,
                                            style: MyTextStyles.workfont(
                                                fontsize: 12.sp,
                                                color: AppColors.blackColor
                                                    .withOpacity(0.6),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 76.h,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 20.h),
                                child: Row(
                                  children: [
                                    Text(
                                      MyText.Getstartstock,
                                      style: MyTextStyles.workfont(
                                          fontsize: 14.sp,
                                          color: AppColors.greyText3,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {
                                        Get.to(
                                          Letsgetstarted(),
                                        );
                                      },
                                      child: Container(
                                        width: 82.w,
                                        height: 39.h,
                                        decoration: BoxDecoration(
                                          color: AppColors.yellowButton2,
                                          borderRadius:
                                              BorderRadius.circular(70.r),
                                        ),
                                        child: Center(
                                            child: Text(
                                          MyText.linkstart,
                                          style: MyTextStyles.workfont(
                                              fontsize: 16.sp,
                                              color: AppColors.blackColor,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
