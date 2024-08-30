import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ChildHomeTotalAmountWidget extends StatefulWidget {

  const ChildHomeTotalAmountWidget({super.key});

  @override
  State<ChildHomeTotalAmountWidget> createState() => _ChildHomeTotalAmountWidgetState();
}

class _ChildHomeTotalAmountWidgetState extends State<ChildHomeTotalAmountWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
      child: Container(
        // height: 300.h,
        width: 350.w,
        decoration: BoxDecoration(
            color: AppColors.childDarkBlue,
            borderRadius: BorderRadius.circular(38)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(13, 20, 13, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Total Amount

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '£27.9',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.soraFamily,
                            fontSize: 48,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        MyText.TotalAmount,
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Image.asset(
                    AppAssets.child_total_amount,
                    width: 144.w,
                    height: 115.h,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),

              // Daily Limit

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.DailyLimit,
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: MyTextStyles.worksansFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '£150',
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: MyTextStyles.worksansFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 307.w,
                height: 13.h,
                decoration: BoxDecoration(
                    color: AppColors.childBlue,
                    borderRadius: BorderRadius.circular(40)),
                child: Container(
                  width: 14.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              // Transfer, Saving And Reward

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.childYellow,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(13, 16, 13, 16),
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.child_transfer,
                            height: 36.h,
                            width: 36.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            MyText.Transfer,
                            style: TextStyle(
                                color: AppColors.childDarkBlue,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.childYellow,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(13, 16, 13, 16),
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.child_savings,
                            height: 36.h,
                            width: 36.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            MyText.Saving,
                            style: TextStyle(
                                color: AppColors.childDarkBlue,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.childYellow,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.child_rewards,
                            height: 36.h,
                            width: 36.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            MyText.Rewards,
                            style: TextStyle(
                                color: AppColors.childDarkBlue,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
