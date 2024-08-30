import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/widget/popularstock.dart';

import 'package:et_bank/ui/screens/stock/widget/stockappwidget/stockappgreen.dart';
import 'package:et_bank/ui/screens/stock/widget/topmovers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class stockapp extends StatefulWidget {
  const stockapp({super.key});

  @override
  State<stockapp> createState() => _stockappState();
}

class _stockappState extends State<stockapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AppAssets.leftarrow,
                        width: 25.12.w,
                        height: 17.94.h,
                        color: AppColors.primaryText,
                      )),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Stocks",
                    style: MyTextStyles.sora5(
                      fontsize: 26.sp,
                      color: AppColors.primaryText,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: 349.w,
                    height: 78.h,
                    decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 28.h, horizontal: 20.w),
                      child: Text(
                        "Your application is being reviewed",
                        style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  stockgreencontainer(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Analytics",
                    style: MyTextStyles.sorafont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 161.h,
                    margin: EdgeInsets.only(right: 167.w),
                    decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Profit and loss",
                            style: MyTextStyles.workfont(
                                fontsize: 12.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$0.00",
                            style: MyTextStyles.sorafont(
                                fontsize: 16.sp,
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Today",
                            style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Today’s Top Movers",
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greenText,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Topmover(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Top stories",
                    style: MyTextStyles.sorafont( 
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 104.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                  border: Border.all(
                                      color: AppColors.greyText2, width: 2.w)),
                              child: Image.asset(
                                AppAssets.stocknewpaper,
                                width: 104.w,
                                height: 104.h,
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Popular stocks",
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greenText,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  popularstockwidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
