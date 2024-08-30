import 'package:et_bank/controllers/loadingcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void shopcashloading(BuildContext context) {
  LoadingController loadingController = Get.put(LoadingController());
  showModalBottomSheet(
    backgroundColor: AppColors.blackColor,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32.r)),
          height: 342.h,
          width: 351.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 40.h, horizontal: 120.w),
                child: Obx(() {
                  return Container(
                    child: loadingController.shopLoading.value
                        ? Container(
                            width: 104.w,
                            height: 104.w,
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                                width: 104.w,
                                height: 104.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.primary,
                                        width: 2.w)),
                                child: Center(
                                    child: Image.asset(
                                  AppAssets.thickimage,
                                  width: 48.w,
                                  height: 35.5.h,
                                ))),
                          ),
                  );
                }),
              ),
              Center(
                child: Text(
                  "Shops cashback is active",
                  textAlign: TextAlign.center,
                  style: MyTextStyles.workfont(
                      fontsize: 20.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Center(
                child: Text(
                  "Redirecting you to Nike",
                  textAlign: TextAlign.center,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              btn(
                  cardText: "Take me there",
                  cardWidth: 327.w,
                  cardHeight: 48.h),
            ],
          ),
        ),
      );
    },
  );
  Future.delayed(Duration(seconds: 3), () {
    loadingController.shopfLoading();
  });
}
