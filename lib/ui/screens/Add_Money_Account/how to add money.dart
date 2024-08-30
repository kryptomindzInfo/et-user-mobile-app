import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/addmoney_iphone.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/britishpound.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/cardyourname.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/send_emailtopayrol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Howtoaddmoney extends StatelessWidget {
  const Howtoaddmoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AppAssets.exit,
                        width: 16.w,
                        height: 16.h,
                        color: AppColors.primaryText,
                      ),
                    ),
                    SizedBox(
                      height: 18.sp,
                    ),
                    Text(
                      MyText.Howtoadmoney,
                      style: MyTextStyles.sorafont(
                          fontsize: 32.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      MyText.Recommended,
                      style: MyTextStyles.sorafont(
                          fontsize: 16.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(Sendemailtopayrol());
                      },
                      child: Container(
                        width: 350.w,
                        height: 86.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 43.w,
                            height: 43.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenText,
                            ),
                            child: Center(
                              child: Image.asset(
                                AppAssets.scard,
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),
                          title: Text(MyText.Salary,
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500)),
                          subtitle: Text(
                            MyText.getpaid,
                            style: MyTextStyles.workfont(
                                fontsize: 12.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Text(
                      MyText.Others,
                      style: MyTextStyles.sorafont(
                          fontsize: 16.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 350.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 20.h),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Get.to(Cardyourname());
                              },
                              leading: Container(
                                width: 43.w,
                                height: 43.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.greenText,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    AppAssets.moneycard,
                                    width: 23.45.w,
                                    height: 16.13.h,
                                  ),
                                ),
                              ),
                              title: Text(MyText.Moneydebit,
                                  style: MyTextStyles.workfont(
                                      fontsize: 16.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500)),
                            ),
                            ListTile(
                              onTap: () {
                                Get.to(AddMoneyiphone());
                              },
                              leading: Container(
                                width: 43.w,
                                height: 43.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.greenText,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    AppAssets.paycard,
                                    width: 28.w,
                                    height: 11.88.h,
                                  ),
                                ),
                              ),
                              title: Text(MyText.setaply,
                                  style: MyTextStyles.workfont(
                                      fontsize: 16.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500)),
                            ),
                            ListTile(
                              onTap: () {
                                Get.to(BritishPound());
                              },
                              leading: Container(
                                width: 43.w,
                                height: 43.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.greenText,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    AppAssets.arrowcard,
                                    width: 22.w,
                                    height: 21.h,
                                  ),
                                ),
                              ),
                              title: Text(MyText.Regbank,
                                  style: MyTextStyles.workfont(
                                      fontsize: 16.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500)),
                              subtitle: Text(
                                MyText.viewacc,
                                style: MyTextStyles.workfont(
                                    fontsize: 12.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
