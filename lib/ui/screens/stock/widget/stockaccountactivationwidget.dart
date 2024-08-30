import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/stock/read.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountActivationWidget extends StatefulWidget {
  @override
  State<AccountActivationWidget> createState() => _AccountActivationWidgetState();
}

class _AccountActivationWidgetState extends State<AccountActivationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: 174.h,
      decoration: BoxDecoration(
        color: AppColors.yellowButton2,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 43.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      AppAssets.stockperson,
                      width: 24.w,
                      height: 34.09.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyText.stockactivation,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        MyText.stockcomplete,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.buttongrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 25.h),
            InkWell(
              onTap: () {},
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    Readcarefully(),
                  );
                },
                child: Container(
                  width: 327.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48.r),
                    color: AppColors.greenText2,
                  ),
                  child: Center(
                    child: Text(
                      MyText.stocktake,
                      style: TextStyle(
                        fontFamily: "Work Sans",
                        color: AppColors.primaryText,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
