import 'package:et_bank/controllers/home/homecontroller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Analytics_flow/Analytic.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/dailylogin.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/onyoureach_invest.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/onyoureach_transfer.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/overhomewidget.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Xplevel.dart';
import 'package:et_bank/ui/screens/child_account_flow/create_child_account.dart';
import 'package:et_bank/ui/screens/homescreens/widget/Transaction.dart';
import 'package:et_bank/ui/screens/homescreens/widget/greencontainer.dart';
import 'package:et_bank/ui/screens/homescreens/widget/homeanalytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class Homewidget extends StatefulWidget {
  const Homewidget({super.key});

  @override
  State<Homewidget> createState() => _HomewidgetState();
}

class _HomewidgetState extends State<Homewidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 363.w,
                decoration: BoxDecoration(
                    color: AppColors.backgroundBox,
                    borderRadius: BorderRadius.circular(31.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: greencontainer(),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      CreateChildAccount(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Analytics",
                                    style: MyTextStyles.sora(
                                      fontsize: 16.sp,
                                      color: AppColors.primaryText,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(Analytics());
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
                              height: 39.h,
                              child: GetBuilder<ListController>(
                                  builder: (listController) {
                                return ListView.builder(
                                  itemCount: listController.Analytics.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                      child: GestureDetector(
                                        onTap: () {
                                          listController.selectItemana(index);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w),
                                          height: 39.h,
                                          decoration: BoxDecoration(
                                            color: listController
                                                .getPageIndicatorColorAna(
                                                    index),
                                            borderRadius:
                                                BorderRadius.circular(70.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              listController.Analytics[index],
                                              style: MyTextStyles.worknormal(
                                                fontsize: 16.sp,
                                                color: listController
                                                    .getItemTextColorana(index),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Homeanalytics(),
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
                      MyText.xplevel,
                      style: MyTextStyles.sora(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(Xplevelbar());
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
                height: 39.h,
                child: GetBuilder<ListController>(builder: (listController) {
                  return ListView.builder(
                    itemCount: listController.textItems2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: GestureDetector(
                          onTap: () {
                            listController.selectItem2(index);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            height: 39.h,
                            decoration: BoxDecoration(
                              color:
                                  listController.getPageIndicatorColor2(index),
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                              child: Text(
                                listController.textItems2[index],
                                style: MyTextStyles.worknormal(
                                  fontsize: 16.sp,
                                  color:
                                      listController.getItemTextColor2(index),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              SizedBox(
                height: 10.h,
              ),

              GetBuilder<ListController>(
                builder: (listController) {
                  switch (listController.selectedIndex2.value) {
                    case 0:
                      return Overviewhome();
                    case 1:
                      return dailylogin();
                    case 2:
                      return Onyoureachtransfer();
                    case 3:
                      return onyoureachinvest();

                    default:
                      return Container();
                  }
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.Trans,
                      style: MyTextStyles.sora(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                      ),
                    ),
                    Text(
                      "View all",
                      style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.greenText,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                  width: 349.w,
                  // height: 126.h,
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      children: [
                        Transaction(
                            imageAsset: AppAssets.netflix,
                            title: "Netflix",
                            subtitle: MyText.NetflixTIME,
                            cost: "-£3.9",
                            costType: "Subscription"),
                        SizedBox(
                          height: 2.h,
                        ),
                        Transaction(
                            imageAsset: AppAssets.figma,
                            title: "Figma",
                            subtitle: MyText.figmaTIME,
                            cost: "-£5.9",
                            costType: "Subscription"),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Actions",
                      style: MyTextStyles.sora(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                      ),
                    ),
                    Text(
                      "View all",
                      style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.greenText,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                  width: 349.w,
                  height: 79.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
                    child: Column(
                      children: [
                        Transaction(
                          imageAsset: AppAssets.citizen,
                          title: MyText.cardfee,
                          titleColor: AppColors.primaryText,
                          subtitle: MyText.Payment,
                          subtitleColor: AppColors.lightredColor,
                          cost: "-£7.99",
                          costColor: AppColors.primaryText,
                          costType: "Pending",
                          costTypeColor: AppColors.lightredColor,
                        ),
                      ],
                    ),
                  )),

              SizedBox(
                height: 20.h,
              ),
              // greycontainer(),
            ],
          ),
        ],
      ),
    );
  }
}
