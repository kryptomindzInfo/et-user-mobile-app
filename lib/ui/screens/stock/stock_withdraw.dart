import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

void stockwithdrawModalBottomSheet(BuildContext context) {
  final ThemeController themeController = Get.put(ThemeController());
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(28.r))),
        height: 270.h,
        width: 390.w,
        child: Padding(
          padding:
              EdgeInsets.only(top: 11.h, left: 20.w, right: 20.w, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallRoundedContainerWidget(),
              SizedBox(
                height: 30.h,
              ),

              //  AccountWidget(
              //                 image: AppAssets.stockwithdraw,
              //                 amount: "£0",
              //                 title: "GBP",
              //                 subTitle: "British Pound",

              //               ),
              //               SizedBox(height: 10.h,),
              //                  AccountWidget(
              //                 image: AppAssets.stockwithdrawsetting,
              //                 amount: "£0",
              //                 title: "USD",
              //                 subTitle: "US Dollar",

              //               ),

              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20.r)),
                  height: 167.h,
                  width: 350.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.stockwithdraw,
                              width: 50.w,
                              height: 50.h,
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            Text(
                              "Withdraw",
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.stockwithdrawsetting,
                              width: 50.w,
                              height: 50.h,
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            Text(
                              "Setting",
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
