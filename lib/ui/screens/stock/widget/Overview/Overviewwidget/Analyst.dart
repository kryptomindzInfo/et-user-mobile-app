import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Analystwidget extends StatefulWidget {
  const Analystwidget({super.key});

  @override
  State<Analystwidget> createState() => _AnalystwidgetState();
}

class _AnalystwidgetState extends State<Analystwidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 351.w,
          height: 404.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$182.19",
                  style: MyTextStyles.workfont(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                 MyText.month12avg,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              AppAssets.stockanalytic,
                              width: 239.h,
                              height: 170.h,
                            ))),
                    Positioned(
                        top: 98.h,
                        child: Text(
                          "\$162.36",
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w500),
                        )),
                    Positioned(
                        right: 25.w,
                        child: Text(
                          "\$ 300.00",
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w500),
                        )),
                    Positioned(
                        right: 30.w,
                        top: 75,
                        child: Text(
                          "\$182.19",
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.greenText,
                              fontWeight: FontWeight.w500),
                        )),
                    Positioned(
                        right: 30.w,
                        bottom: 0,
                        child: Text(
                          "\$24.33",
                          style: MyTextStyles.workfont(
                              fontsize: 12.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                 MyText.thirdnotadvicesec,
                  textAlign: TextAlign.center,
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w500),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Learn more.",
                      textAlign: TextAlign.center,
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.greenText,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ),
        );
  }
}