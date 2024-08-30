import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Xplevelbar/telemartloading.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Telemartonlinegift extends StatefulWidget {
  const Telemartonlinegift({super.key});

  @override
  State<Telemartonlinegift> createState() => _TelemartonlinegiftState();
}

class _TelemartonlinegiftState extends State<Telemartonlinegift> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: themeController.bgColor.value,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset(
            AppAssets.leftarrow,
            width: 25.12.w,
            height: 17.94.h,
            color: AppColors.primaryText,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.Telemart,
                      style: MyTextStyles.sorafont(
                          fontsize: 26.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      MyText.Telemart,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      MyText.E10,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                    width: 64.w,
                    height: 64.w,
                    child: Image.asset(
                      AppAssets.telemart,
                      width: 64.w,
                      height: 64.w,
                      fit: BoxFit.cover,
                    ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 349.w,
              height: 84.h,
              decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.circular(28.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      MyText.totalpoints,
                      style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      MyText.onefiftyof,
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 314.5.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: LinearProgressIndicator(
                        value: 0.1,
                        borderRadius: BorderRadius.circular(4.r),
                        backgroundColor: AppColors.greyText2,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.greenText),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 349.w,
              decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.circular(28.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                child: Text(
                  MyText.telemartisa,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
                onTap: () {
                  Telemartloading(context);
                },
                child: btn(
                    cardText: MyText.redeem,
                    cardWidth: 327.w,
                    cardHeight: 48.h)),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    ));
  }
}
