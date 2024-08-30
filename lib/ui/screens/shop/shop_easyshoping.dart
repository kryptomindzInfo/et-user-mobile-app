import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/shop/shoptailored.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class Easyshoping extends StatefulWidget {
  const Easyshoping({super.key});

  @override
  State<Easyshoping> createState() => _EasyshopingState();
}

class _EasyshopingState extends State<Easyshoping> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TweenAnimationBuilder<double>(
                  duration: const Duration(seconds: 3),
                  tween: Tween<double>(
                    begin: 0,
                    end: 1,
                  ),
                  onEnd: () {
                    Get.to(shoptailored());
                  },
                  builder: (context, value, _) => Column(
                    children: [
                      LinearProgressIndicator(
                        backgroundColor: AppColors.greyText2,
                        borderRadius: BorderRadius.circular(20),
                        value: value,
                        color: AppColors.greenText,
                        minHeight: 2.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.logo72,
                        color: AppColors.primaryText,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        MyText.shop,
                        style: MyTextStyles.worknormal(
                          fontsize: 12.sp,
                          color: AppColors.primaryText,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            AppAssets.exit,
                            color: AppColors.primaryText,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 185.h),
                  child: Text(
                    MyText.easyshoppi,
                    style: MyTextStyles.sora(
                      fontsize: 40.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 230.h),
                  child: InkWell(
                      onTap: () {
                        Get.to(shoptailored());
                      },
                      child: btn(
                          cardText: "Sign up",
                          cardWidth: 327.w,
                          cardHeight: 48.h)),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
