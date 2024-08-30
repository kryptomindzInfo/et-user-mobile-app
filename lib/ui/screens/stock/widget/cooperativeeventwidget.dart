import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cooperativeeventswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 363.w,
      width: 349.h,
      decoration: BoxDecoration(
        color: AppColors.blackBox, // Replace AppColors.buttongrey with a defined color
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.h),
                      child: Text(
                        "2 May",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color:AppColors.greyText2, // Replace AppColors.grey with a defined color
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Container(
                      width: 4.w,
                      height: 83.h,
                      decoration: BoxDecoration(
                        color: AppColors.yellowButton, // Replace AppColors.yellow with a defined color
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          MyText.stockbright,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.primaryText, // Replace AppColors.white with a defined color
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                           MyText.stockearnig,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.greyText2, // Replace AppColors.grey with a defined color
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(top: 10.h),
                      child: Image.asset(
                        AppAssets.stocksun, // Replace AppAssets.stocksun with the actual image path
                        width: 64.w,
                        height: 64.h,
                      ),
                    ),
                  ],
                ),
              );
            },
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }
}
