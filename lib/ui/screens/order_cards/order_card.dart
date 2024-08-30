import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:et_bank/controllers/Ordercardcontroller/ordercard.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class ordercard extends StatefulWidget {
  ordercard({super.key});

  @override
  State<ordercard> createState() => _ordercardState();
}

class _ordercardState extends State<ordercard> {
  final OrderCardController controller = Get.put(OrderCardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<OrderCardController>(
          builder: (_) => Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryButton),
                        child: Image.asset(
                          AppAssets.addBlack,
                          width: 15.12.w,
                          height: 15.94.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 204.h,
                          onPageChanged:
                              (index, CarouselPageChangedReason reason) {
                            controller.onPageChanged(index, reason);
                          },
                          enableInfiniteScroll: false,
                        ),
                        items: controller.currentFairImageList.map((image) {
                          return Builder(builder: (BuildContext context) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Container(
                                width: double.infinity,
                                child: Obx(() {
                                  return Column(
                                    children: [
                                      if (controller.isFrozen.isTrue)
                                        BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 5, sigmaY: 5),
                                          child: Image.asset(
                                            image,
                                            width: 294.0,
                                            height: 184.0,
                                          ),
                                        )
                                      else
                                        Image.asset(
                                          image,
                                          width: 294.0,
                                          height: 184.0,
                                        ),
                                    ],
                                  );
                                }),
                              ),
                            );
                          });
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: controller.changeDetails,
                          child: Container(
                            width: 43.w,
                            height: 43.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greyBox,
                            ),
                            child: Image.asset(
                              controller.eyeIcon,
                              color: AppColors.primaryText,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          MyText.showdetail,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: controller.freezeCarousel,
                          child: Container(
                            width: 43.w,
                            height: 43.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greyBox,
                            ),
                            child: Image.asset(
                              AppAssets.orderfreeze,
                              color: AppColors.primaryText,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          MyText.freeze,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 43.w,
                          height: 43.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.greyBox,
                          ),
                          child: Image.asset(
                            AppAssets.ordersetting,
                            color: AppColors.primaryText,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Setting',
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                controller.currentFairIndex.value == 2
                    ? Container(
                        width: 349.h,
                        height: 135.h,
                        decoration: BoxDecoration(
                          color: AppColors.greyBox,
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    MyText.Singleuse,
                                    style: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    MyText.carduse,
                                    style: MyTextStyles.workfont(
                                        fontsize: 14.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(bottom: 50.h),
                                child: Image.asset(AppAssets.orderlock),
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(
                        width: 349.h,
                        height: 135.h,
                        decoration: BoxDecoration(
                          color: AppColors.greyBox,
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    MyText.weareon,
                                    style: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Text(
                                    MyText.trackd,
                                    style: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.greenText,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 90.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.greenText,
                                      borderRadius: BorderRadius.circular(28.r),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 90.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.greyText2,
                                      borderRadius: BorderRadius.circular(28.r),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: 90.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.greyText2,
                                      borderRadius: BorderRadius.circular(28.r),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Ordered',
                                    style: MyTextStyles.workfont(
                                        fontsize: 14.sp,
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Posted',
                                    style: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Expected',
                                    style: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '2 May',
                                    style: MyTextStyles.workfont(
                                        fontsize: 14.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '-',
                                    style: MyTextStyles.workfont(
                                        fontsize: 14.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'est 9 May',
                                    style: MyTextStyles.workfont(
                                        fontsize: 14.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 349.h,
                  height: 88.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Container(
                          width: 34.w,
                          height: 22.h,
                          decoration: BoxDecoration(
                            color: AppColors.greenText,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(AppAssets.orderlogo),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'No transactions yet',
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                controller.currentFairIndex.value == 2
                    ? Container()
                    : btn(
                        cardText: "Add to wallet",
                        cardWidth: 318.w,
                        cardHeight: 48.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
