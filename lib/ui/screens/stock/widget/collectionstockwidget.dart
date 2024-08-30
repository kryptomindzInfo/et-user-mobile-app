import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class collectionStockInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 166.w,
          height: 169.h,
          decoration: BoxDecoration(
            color: AppColors.blackBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.stockcol1,
                    width: 88.w,
                    height: 73.h,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  MyText.stocknewly,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.stockmenu,
                      width: 16.w,
                      height: 11.98.h,
                    color: AppColors.primaryText,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "2 Stocks",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 166.w,
          height: 169.h,
          decoration: BoxDecoration(
            color: AppColors.blackBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.stockcol2,
                    width: 64.w,
                    height: 68.92.h,
                  ),
                ),
                Text(
                  MyText.stockconsumer,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.stockmenu,
                      width: 16.w,
                      height: 11.98.h,
                    color: AppColors.primaryText,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "250 Stocks",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
