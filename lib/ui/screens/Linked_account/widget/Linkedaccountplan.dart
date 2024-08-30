import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Linked_account/seeaccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';

class Linkedaccountplan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            width: 349.w,
            height: 431.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.r),
              color: AppColors.greyBox,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 330.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.greenText,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21.r),
                          topRight: Radius.circular(21.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 200.h),
                              child: Text(
                                MyText.getfull,
                                style: MyTextStyles.sora(
                                  fontsize: 32.sp,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 16.h),
                        child: Row(
                          children: [
                            Text(
                              MyText.linkother,
                              style: MyTextStyles.workfont(
                                  fontsize: 14.sp,
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Get.to(Seeaccount());
                              },
                              child: Container(
                                width: 82.w,
                                height: 39.h,
                                decoration: BoxDecoration(
                                  color: AppColors.yellowButton2,
                                  borderRadius: BorderRadius.circular(70.r),
                                ),
                                child: Center(
                                    child: Text(
                                  MyText.linkstart,
                                  style: MyTextStyles.workfont(
                                      fontsize: 16.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
