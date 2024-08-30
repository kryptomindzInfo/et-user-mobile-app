import 'package:et_bank/ui/widgets/circularIcons.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaDotAboutWidget extends StatefulWidget {
  PolkaDotAboutWidget({super.key});

  @override
  State<PolkaDotAboutWidget> createState() => _PolkaDotAboutWidgetState();
}

class _PolkaDotAboutWidgetState extends State<PolkaDotAboutWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, bottom: 8, top: 32, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.AboutPolkadot,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: MyTextStyles.soraFamily),
              ),
            ],
          ),
        ),
        Container(
          // height: 465.h,
          width: 350.w,
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 29, right: 16, bottom: 27),
            child: Column(
              children: [
                Text(
                  MyText.Polkadotisanopensource,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircularIcons(
                      color: AppColors.primaryButton,
                      image: AppAssets.official_website,
                    ),
                    // Image.asset(
                    //   AppAssets.official_website,
                    //   height: 43.h,
                    //   width: 43.w,
                    // ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      MyText.Officialwebsite,
                      style: TextStyle(
                          color: AppColors.greenText3,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
                SizedBox(
                  height: 33.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircularIcons(
                      color: AppColors.primaryButton,
                      image: AppAssets.white_papper,
                    ),
                    // Image.asset(
                    //   AppAssets.white_papper,
                    //   height: 43.h,
                    //   width: 43.w,
                    //   color: AppColors.primaryText,
                    // ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      MyText.Whitepapper,
                      style: TextStyle(
                          color: AppColors.greenText3,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
