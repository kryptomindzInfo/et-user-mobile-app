import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_buy_collection.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_discover_collection_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_discover_earn_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_discover_recentlyviewed.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_todaytopmover_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_todaytopmovers_buttons.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoDiscover extends StatefulWidget {
  const CryptoDiscover({super.key});

  @override
  State<CryptoDiscover> createState() => _CryptoDiscoverState();
}

class _CryptoDiscoverState extends State<CryptoDiscover> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(

          
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                      // Navigator.pop(context);
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            title: Text(
              MyText.Discover,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.soraFamily),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(
                    hintText: "home",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    MyText.Recentlyviewed,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CryptoDiscoverRecentlyViewedWidget(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    children: [
                      Text(
                        MyText.Earn,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Image.asset(
                        AppAssets.exclamation_icon,
                        color: AppColors.primaryText,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CryptoDiscoverEarnWidget(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.Collections,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Text(
                        MyText.seeall,
                        style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CryptoDiscoverCollectionWidget(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.TodaysTopMovers,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Text(
                        MyText.seeall,
                        style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    width: 349.w,
                    decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 14.h,
                        ),
                        Container(
                          // padding: const EdgeInsets.only(left: 14, right: 14),
                          child: CryptoTopMoversButtons(),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CryptoTodayTopMoverWidget(),
                        CryptoTodayTopMoverWidget(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ButtonWidget(
                      color: AppColors.primaryButton,
                      text: Text(
                        MyText.Getstarted,
                        style: TextStyle(
                            color: AppColors.btnText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                      onPressed: () {
                        Get.to(
                          CryptoBuyNewCollection(),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
