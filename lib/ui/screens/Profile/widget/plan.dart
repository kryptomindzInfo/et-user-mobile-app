import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class planWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: 375.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.r),
        color: AppColors.buttongrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 349.w,
            height: 375.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.r),
              color: AppColors.buttongrey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 270.w,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greenBox,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21.r),
                      topRight: Radius.circular(21.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset(AppAssets.exit)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 140.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.plan,
                                style: MyTextStyles.worknormal(
                                  fontsize: 16.sp,
                                  color: AppColors.lgrey,
                                ),
                              ),
                              Text(
                                MyText.get,
                                style: MyTextStyles.sora(
                                  fontsize: 32.sp,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 86.h,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      children: [
                        Text(
                          MyText.enjoy,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Container(
                          width: 106.w,
                          height: 39.h,
                          decoration: BoxDecoration(
                            color: AppColors.yellow,
                            borderRadius: BorderRadius.circular(70.r),
                          ),
                          child: Center(
                              child: Text(MyText.view,
                                  style: MyTextStyles.workfont(
                                      fontsize: 16.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
