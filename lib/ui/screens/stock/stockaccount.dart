import 'package:et_bank/controllers/stockcontroller/stockaccountcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/letgetstarted.dart';
import 'package:et_bank/ui/screens/stock/tslaalert.dart';
import 'package:et_bank/ui/screens/stock/widget/collectionstockwidget.dart';
import 'package:et_bank/ui/screens/stock/widget/cooperativeeventwidget.dart';
import 'package:et_bank/ui/screens/stock/widget/popularstock.dart';
import 'package:et_bank/ui/screens/stock/widget/stockaccountactivationwidget.dart';
import 'package:et_bank/ui/screens/stock/widget/topmovers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class stockaccount extends StatefulWidget {
  stockaccount({super.key});

  @override
  State<stockaccount> createState() => _stockaccountState();
}

class _stockaccountState extends State<stockaccount> {
  final stockaccountController controller = Get.put(stockaccountController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
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
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 349.w,
                      height: 178.h,
                      decoration: BoxDecoration(
                        color: AppColors.blackBox,
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "£0",
                                  style: MyTextStyles.sora5(
                                    fontsize: 32.sp,
                                    color: AppColors.primaryText,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.h,
                                ),
                                Container(
                                  width: 24.w,
                                  height: 24.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.blackBox,
                                  ),
                                  child: Image.asset(
                                    AppAssets.vector,
                                    color: AppColors.primaryText,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "£0.0%",
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.greyText2,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              MyText.stockCAPITAL,
                              style: MyTextStyles.sorafont(
                                fontsize: 12.sp,
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Obx(() {
                              return Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectinvest();
                                    },
                                    child: Container(
                                      width: 81.w,
                                      height: 39.h,
                                      decoration: BoxDecoration(
                                          color: controller.invest.value
                                              ? AppColors.yellowButton
                                              : AppColors.darkGreyText,
                                          borderRadius:
                                              BorderRadius.circular(70.r)),
                                      child: Center(
                                        child: Text(
                                          "Invest",
                                          style: MyTextStyles.sorafont(
                                              fontsize: 16.sp,
                                              color: controller.invest.value
                                                  ? AppColors.blackText
                                                  : AppColors.blackColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectmoney();
                                    },
                                    child: Container(
                                      width: 129.w,
                                      height: 39.h,
                                      decoration: BoxDecoration(
                                          color: controller.addmoney.value
                                              ? AppColors.yellowButton
                                              : AppColors.darkGreyText,
                                          borderRadius:
                                              BorderRadius.circular(70.r)),
                                      child: Center(
                                        child: Text(
                                          "+ Add money",
                                          style: MyTextStyles.sorafont(
                                              fontsize: 16.sp,
                                              color: controller.addmoney.value
                                                  ? AppColors.blackText
                                                  : AppColors.blackColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AccountActivationWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Watchlist",
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
                    Container(
                      width: 349.w,
                      height: 87.h,
                      decoration: BoxDecoration(
                        color: AppColors.blackBox,
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Container(
                              width: 43.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                  color: AppColors.greenText,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Image.asset(
                                  AppAssets.stocktrack,
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              MyText.stockkeep,
                              style: MyTextStyles.sorafont(
                                  fontsize: 16.sp,
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(Tslaalert());
                              },
                              child: Container(
                                width: 81.w,
                                height: 39.h,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryButton,
                                    borderRadius: BorderRadius.circular(70.r)),
                                child: Center(
                                  child: Text(
                                    "+ Add",
                                    style: MyTextStyles.sorafont(
                                        fontsize: 16.sp,
                                        color: AppColors.btnText,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
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
                          MyText.stocktoday,
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
                    Row(
                      children: [
                        Text(
                          MyText.stockpo,
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
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          MyText.stockcor,
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
                    Cooperativeeventswidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          MyText.stockcoll,
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
                    collectionStockInfoWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 70.h),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              MyText.stockpastper,
                              textAlign: TextAlign.center,
                              style: MyTextStyles.workfont(
                                  fontsize: 14.sp,
                                  color: AppColors.greyText2,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              MyText.stockservice,
                              style: MyTextStyles.workfont(
                                  fontsize: 14.sp,
                                  color: AppColors.greyText2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
