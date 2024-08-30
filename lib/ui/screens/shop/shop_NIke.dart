import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/shop/Shopcashloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class shopnike extends StatelessWidget {
  const shopnike({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Container(
          width: 390.w,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.shopshoes), fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppAssets.exit,
                      color: AppColors.white,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  MyText.nike,
                  style: MyTextStyles.sorafont(
                      fontsize: 32.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                 MyText.getonein,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.rgbgreywhite,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  MyText.TermsCondi,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.rgbgreywhite,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 470.h, left: 10.w),
                  child: InkWell(
                      onTap: () {
                        shopcashloading(context);
                      },
                      child: btn(
                          cardText: MyText.shoponein,
                          cardWidth: 327.w,
                          cardHeight: 48.h)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
