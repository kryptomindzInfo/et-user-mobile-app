import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/shop/shop_allsaint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class shoptailored extends StatefulWidget {
  const shoptailored({super.key});

  @override
  State<shoptailored> createState() => _shoptailoredState();
}

class _shoptailoredState extends State<shoptailored> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: SingleChildScrollView(
          child: Container(
            width: 390.w,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AppAssets.exit,
                        color: AppColors.primaryText,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    MyText.shopstai,
                    style: MyTextStyles.sorafont(
                        fontsize: 32.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    MyText.getgreat,
                    style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    MyText.wanttoma,
                    style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(child: Image.asset(AppAssets.shoptailored)),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 20.h, left: 10.w),
                    child: InkWell(
                        onTap: () {
                          Get.to(shopallsaint());
                        },
                        child: btn(
                            cardText: MyText.Conf,
                            cardWidth: 327.w,
                            cardHeight: 48.h)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Container(
                      width: 327.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48.0),
                          border: Border.all(
                            color: AppColors.primaryButton,
                          )),
                      child: Center(
                        child: Text(
                          MyText.Notnow,
                          style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.greenText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
