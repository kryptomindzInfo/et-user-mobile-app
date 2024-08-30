import 'package:et_bank/global/constants/colors.dart';

import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';

import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());
void OrdertypeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        height: 398.h,
        width: 390.w,
        child: Padding(
          padding: EdgeInsets.only(
              top: 11.0.h, left: 20.w, right: 20.w, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallRoundedContainerWidget(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  "Order types",
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'WorkSans'),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 350.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: ListTile(
                      leading: Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenText,
                        ),
                        child: Image.asset(
                          AppAssets.order1,
                          width: 42.w,
                          height: 42.h,
                        ),
                      ),
                      title: Text("Market order",
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500)),
                      subtitle: Text(
                        "Exchange assets immediately",
                        style: MyTextStyles.workfont(
                            fontsize: 12.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 350.w,
                height: 80.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: ListTile(
                    leading: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greenText,
                      ),
                      child: Image.asset(
                        AppAssets.order2,
                      ),
                    ),
                    title: Text("Stop order",
                        style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Buy when a stop price is reached",
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 350.w,
                height: 80.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: ListTile(
                    leading: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greenText,
                      ),
                      child: Image.asset(
                        AppAssets.order3,
                      ),
                    ),
                    title: Text("Limit order",
                        style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      "Buy only at limit price or lower",
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w400),
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
