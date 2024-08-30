import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_polkadot_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class CryptoStaking extends StatefulWidget {
  CryptoStaking({super.key});

  @override
  State<CryptoStaking> createState() => _CryptoStakingState();
}

class _CryptoStakingState extends State<CryptoStaking> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: themeController.bgColor.value,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweenAnimationBuilder<double>(
                  duration: const Duration(seconds: 3),
                  tween: Tween<double>(
                    begin: 0,
                    end: 1,
                  ),
                  onEnd: () {
                    Get.to(CryptoPolkaDotOverView());
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
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.logo72,
                      color: AppColors.primaryText,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      MyText.Cryptostaking,
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
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
                SizedBox(
                  height: 27.h,
                ),
                Text(
                  MyText.getupto,
                  style: TextStyle(
                      fontSize: 32.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  MyText.Notregulated,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 440.h,
                ),
                Center(
                  child: InkWell(
                      onTap: () {
                        Get.to(CryptoPolkaDotOverView());
                      },
                      child: btn(
                          cardText: MyText.Stakeyourcrypto,
                          cardWidth: 327.w,
                          cardHeight: 48.h)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
