import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_discover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class DiscoverCryptoinApp extends StatefulWidget {
  const DiscoverCryptoinApp({super.key});

  @override
  State<DiscoverCryptoinApp> createState() => _DiscoverCryptoinAppState();
}

class _DiscoverCryptoinAppState extends State<DiscoverCryptoinApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                children: [
                  TweenAnimationBuilder<double>(
                    duration: const Duration(seconds: 3),
                    tween: Tween<double>(
                      begin: 0,
                      end: 1,
                    ),
                    onEnd: () {
                      Get.back();
                    },
                    builder: (context, value, _) => Column(
                      children: [
                        LinearProgressIndicator(
                          backgroundColor: AppColors.grey,
                          borderRadius: BorderRadius.circular(20),
                          value: value,
                          color: AppColors.greenText,
                          minHeight: 2.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
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
                          MyText.Capitalisatrisk,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200.h, left: 60.w),
                    child: Text(
                      MyText.Discovercryptoinapp,
                      style: TextStyle(
                          fontSize: 40.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w700,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 270.h),
                    child: InkWell(
                      onTap: () {
                        Get.to(
                          CryptoDiscover(),
                        );
                      },
                      child: btn(
                        cardText: MyText.Getstarted,
                        cardWidth: 327.w,
                        cardHeight: 48.h,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
