import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Insurance/peacemind.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class moreinsurance extends StatefulWidget {
  @override
  State<moreinsurance> createState() => _moreinsuranceState();
}

class _moreinsuranceState extends State<moreinsurance> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.r),
        color: AppColors.allBoxes,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 273.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.greenText,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21.r),
                topRight: Radius.circular(21.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 150.h),
              child: Text(
                MyText.Getmoreinsu,
                style: MyTextStyles.sora(
                  fontsize: 32.sp,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Row(
                children: [
                  Text(
                    MyText.Getmoretravinsu,
                    style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(Peacemind());
                    },
                    child: Container(
                      width: 114.w,
                      height: 39.h,
                      decoration: BoxDecoration(
                        color: AppColors.yellowButton,
                        borderRadius: BorderRadius.circular(70.r),
                      ),
                      child: Center(
                          child: Text(
                        "View plans",
                        style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.blackText,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
