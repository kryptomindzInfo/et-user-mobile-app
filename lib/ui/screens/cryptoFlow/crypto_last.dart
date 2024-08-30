import 'package:et_bank/controllers/home/homecontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_discover_earn_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/cryptolast_analytics_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/cryptolast_cryptoportfolioWidget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/cryptolast_loststories_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/cryptolast_notdonetaxes_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/cryptolast_watch_widget.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoLast extends StatefulWidget {
  CryptoLast({super.key});

  @override
  State<CryptoLast> createState() => _CryptoLastState();
}

class _CryptoLastState extends State<CryptoLast> {
  final ThemeController themeController = Get.put(ThemeController());

  ListController controller = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
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
          title: Text(
            MyText.Crypto,
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
                  hintText: "Home",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 32.h,
                ),
                CryptoLastCryptoPortfolioWidget(),
                SizedBox(
                  height: 16.h,
                ),
                CryptoLastNotDoneTaxes(),
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
                    Image.asset(AppAssets.exclamation_icon),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                CryptoDiscoverEarnWidget(),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Analytics,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CryptoLastAnalyticsWidget(),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  MyText.Cryptocards,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CryptoLastNotDoneTaxes(
                  image: AppAssets.crypto_cards,
                  title: MyText.Earn1cashback,
                  subtitle: MyText.Spendcryptoinstantly,
                  buttontext: MyText.Getvirtualcardforfree,
                  onPressed: () {
                    controller.selectedIndex(1);
                    Get.to(btmnavigation());
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.Watchlist,
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
                  height: 8,
                ),
                CryptoLastWatchListWidget(),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.TopStories,
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
                  height: 17.h,
                ),
                CryptoLastTopStoriesWidget(),
                SizedBox(
                  height: 32,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Service provided by ET Bank Ltd. View ',
                        style: TextStyle(
                          color: AppColors.greenText2,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                      TextSpan(
                        text: 'Crypto Disclosures.',
                        style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
