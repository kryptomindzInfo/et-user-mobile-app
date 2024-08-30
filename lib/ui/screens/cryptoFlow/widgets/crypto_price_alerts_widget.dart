import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaDotPriceAlertWidget extends StatefulWidget {

  PolkaDotPriceAlertWidget({super.key});

  @override
  State<PolkaDotPriceAlertWidget> createState() => _PolkaDotPriceAlertWidgetState();
}

class _PolkaDotPriceAlertWidgetState extends State<PolkaDotPriceAlertWidget> {
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
                MyText.Pricealerts,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.yellow_bell,
                  height: 40.h,
                  width: 30.w,
                ),
                SizedBox(
                  width: 34.w,
                ),
                Text(
                  MyText.DOTpricealert,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
