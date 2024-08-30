import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Telemartrewards.dart';
import 'package:et_bank/ui/screens/Xplevelbar/telemartonline_gift.dart';
import 'package:et_bank/ui/screens/Xplevelbar/telemartradeem.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Overviewwidget extends StatefulWidget {
  const Overviewwidget({super.key});

  @override
  State<Overviewwidget> createState() => _OverviewwidgetState();
}

class _OverviewwidgetState extends State<Overviewwidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 349.w,
          height: 90.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                ),
              ]),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.recetrede,
                style: MyTextStyles.sora(
                    fontsize: 16.sp, color: AppColors.primaryText),
              ),
              InkWell(
                onTap: () {
                  Get.to(Telemardradeem());
                },
                child: Text(
                  "View all",
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 349.w,
          height: 169.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppAssets.telemart,
                      width: 30.w,
                      height: 30.h,
                    ),
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
                          MyText.fifpoints,
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.telemart,
                      width: 30.w,
                      height: 30.h,
                    ),
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
                          MyText.fifpoints,
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.telemart,
                      width: 30.w,
                      height: 30.h,
                    ),
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
                          MyText.fifpoints,
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rewards",
                style: MyTextStyles.sora(
                    fontsize: 16.sp, color: AppColors.primaryText),
              ),
              InkWell(
                onTap: () {
                  Get.to(Telemardrewards());
                },
                child: Text(
                  "View all",
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 349.w,
          height: 684.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(Telemartonlinegift());
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Container(
                      width: 335.w,
                      height: 121.h,
                      decoration: BoxDecoration(
                        color: AppColors.blackBox2,
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 14.w),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppAssets.telemart,
                                    width: 30.w,
                                    height: 30.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            color: AppColors.greyText2,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 5.h, top: 10.h, right: 10.w),
                              child: Container(
                                width: 210.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: LinearProgressIndicator(
                                  value: 0.06,
                                  borderRadius: BorderRadius.circular(4.r),
                                  backgroundColor: AppColors.greyText2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      AppColors.greenText),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            btn(
                              cardText: MyText.redeem,
                              cardWidth: 303.w,
                              cardHeight: 34.h,
                              color:
                                  AppColors.btnText,
                            )
                          ]),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
