import 'package:et_bank/controllers/accountFlow/account_details_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/graphs/Stockgraph/freecashgraph/freecashgraph.dart';
import 'package:et_bank/ui/screens/graphs/Stockgraph/stockIncome.dart';
import 'package:et_bank/ui/screens/graphs/Stockgraph/stockbalannual.dart';
import 'package:et_bank/ui/screens/graphs/Stockgraph/stockincomequaterlly.dart';
import 'package:et_bank/ui/widgets/circularbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class Financial extends StatefulWidget {
  Financial({super.key});

  @override
  State<Financial> createState() => _FinancialState();
}

class _FinancialState extends State<Financial> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountDetailsController accountDetailsController =
      Get.put(AccountDetailsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Income  status",
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
          height: 5.h,
        ),
        Container(
            width: 351.w,
            height: 370.h,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: Obx(() {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(48.r)),
                    height: 43.h,
                    width: 321.w,
                    child: Row(
                      children: [
                        Container(
                          height: 43.h,
                          width: 160.w,
                          child: ButtonWidget(
                              color: accountDetailsController
                                  .getLocalButtonColorforinc(),
                              text: Text(
                                "Annual",
                                style: TextStyle(
                                    color: accountDetailsController
                                        .getLocalButtonTextColorforinc(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Work Sans'),
                              ),
                              onPressed: () {
                                accountDetailsController
                                    .setLocalValueforincome(true);
                              }),
                        ),
                        Container(
                          height: 43.h,
                          width: 160.w,
                          child: ButtonWidget(
                              color: accountDetailsController
                                  .getSwiftButtonColorforinc(),
                              text: Text(
                                "Quarterly",
                                style: TextStyle(
                                    color: accountDetailsController
                                        .getSwiftButtonTextColorforinc(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              onPressed: () {
                                accountDetailsController
                                    .setLocalValueforincome(false);
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  accountDetailsController.Incomegraph == true
                      ? InomeGraphannually()
                      : InomeGraphquaterlly(),
                ]),
              );
            })),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Text(
              "Balance sheet",
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
          height: 5.h,
        ),
        Container(
            width: 351.w,
            height: 370.h,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: Obx(() {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(48.r)),
                    height: 43.h,
                    width: 321.w,
                    child: Row(
                      children: [
                        Container(
                          height: 43.h,
                          width: 160.w,
                          child: ButtonWidget(
                              color: accountDetailsController
                                  .getLocalButtonColor(),
                              text: Text(
                                "Annual",
                                style: TextStyle(
                                    color: accountDetailsController
                                        .getLocalButtonTextColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Work Sans'),
                              ),
                              onPressed: () {
                                accountDetailsController.setLocalValue(true);
                              }),
                        ),
                        Container(
                          height: 43.h,
                          width: 160.w,
                          child: ButtonWidget(
                              color: accountDetailsController
                                  .getSwiftButtonColor(),
                              text: Text(
                                "Quarterly",
                                style: TextStyle(
                                    color: accountDetailsController
                                        .getSwiftButtonTextColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              onPressed: () {
                                accountDetailsController.setLocalValue(false);
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  accountDetailsController.local == true
                      ? balanceGraphannually()
                      : InomeGraphquaterlly(),
                ]),
              );
            })),
        SizedBox(
          height: 20.h,
        ),
        Container(
            width: 351.w,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: Obx(() {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(48.r)),
                    height: 43.h,
                    width: 321.w,
                    child: Row(
                      children: [
                        Container(
                          height: 43.h,
                          width: 160.w,
                          child: ButtonWidget(
                              color: accountDetailsController
                                  .getLocalButtonColorforfeecash(),
                              text: Text(
                                "Annual",
                                style: TextStyle(
                                    color: accountDetailsController
                                        .getLocalButtonTextColorforfeecash(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Work Sans'),
                              ),
                              onPressed: () {
                                accountDetailsController
                                    .setLocalValueforfeecash(true);
                              }),
                        ),
                        Container(
                          height: 43.h,
                          width: 160.w,
                          child: ButtonWidget(
                              color: accountDetailsController
                                  .getSwiftButtonColorforfeeash(),
                              text: Text(
                                "Quarterly",
                                style: TextStyle(
                                    color: accountDetailsController
                                        .getSwiftButtonTextColorforfeecash(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              onPressed: () {
                                accountDetailsController
                                    .setLocalValueforfeecash(false);
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  accountDetailsController.feecashgraph == true
                      ? freecashgraph()
                      : balanceGraphannually(),
                ]),
              );
            })),
        SizedBox(
          height: 40.h,
        ),
        Text(
          MyText.pastperformance,
          textAlign: TextAlign.center,
          style: MyTextStyles.workfont(
              fontsize: 12.sp,
              color: AppColors.greyText2,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(MyText.stockCAPITAL,
              style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 30.w),
          child: Row(children: [
            CircularButton(
                color: AppColors.primaryButton, title: "+ Buy", onTap: () {}),
            SizedBox(
              width: 20.w,
            ),
            CircularButton(
                color: AppColors.greyBox,
                title: "- Sell",
                onTap: () {
                  // Get.to(Passport());
                }),
          ]),
        )
      ],
    );
  }
}
