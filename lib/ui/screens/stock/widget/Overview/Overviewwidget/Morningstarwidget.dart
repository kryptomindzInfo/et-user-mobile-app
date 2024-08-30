import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Morningstarwidget extends StatefulWidget {
  const Morningstarwidget({super.key});

  @override
  State<Morningstarwidget> createState() => _MorningstarwidgetState();
}

class _MorningstarwidgetState extends State<Morningstarwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.w,
      // height: 381.h,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyText.teslearningstock,
              style: MyTextStyles.workfont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 3.h),
            Text(
             MyText.oct19,
              style: MyTextStyles.workfont(
                  fontsize: 16.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     MyText.Mornrating,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "1 Oct 2023",
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Container(
                    width: 66.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      border: Border.all(
                        color: AppColors.yellowButton,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          children: [
                            Image.asset(AppAssets.star2 ,color: AppColors.yellowButton,width: 14.w,height: 14.h,),
                           SizedBox(width: 5.w,),
                            Text(
                              "4/5",
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.yellowButton,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
              MyText.Mornrating,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "1 Oct 2023",
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90.w),
                      child: Text(
                        "\$215.99",
                        textAlign: TextAlign.end,
                        style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                    MyText.undervalued,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                MyText.uncertaintyrating,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "Very High",
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Text(
             MyText.notadvice,
              textAlign: TextAlign.center,
              style: MyTextStyles.workfont(
                  fontsize: 12.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w500),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "report.",
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Learn more.",
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.greenText,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
