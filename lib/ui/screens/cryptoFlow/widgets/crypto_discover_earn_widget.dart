import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_polkadot_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoDiscoverEarnWidget extends StatefulWidget {
  CryptoDiscoverEarnWidget({super.key});

  @override
  State<CryptoDiscoverEarnWidget> createState() =>
      _CryptoDiscoverEarnWidgetState();
}

class _CryptoDiscoverEarnWidgetState extends State<CryptoDiscoverEarnWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.backgroundBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 14.0, bottom: 18.0, right: 13, left: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(CryptoPolkaDotOverView());
                  },
                  child: Image.asset(
                    AppAssets.DOT,
                    width: 58.w,
                    height: 58.h,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.DOT,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.T44APY,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  AppAssets.XTZ,
                  width: 58.w,
                  height: 58.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.XTZ,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.T44APY,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  AppAssets.ETH,
                  width: 58.w,
                  height: 58.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.ETH,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.T44APY,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  AppAssets.ADA,
                  width: 58.w,
                  height: 58.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.ADA,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  MyText.T44APY,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
