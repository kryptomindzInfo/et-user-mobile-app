import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_topmovers_last.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());
void showDotPriceAlertLoading(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => TopMoversLast(),
        ));
      });
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 410.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 11.0, left: 41, right: 20, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32.h,
                ),
                Container(
                  height: 104.h,
                  width: 104.w,
                  child: CircularProgressIndicator(
                    color: AppColors.greenText,
                    strokeWidth: 2,
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  MyText.YourDOTpricealertcreated,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  MyText.Youllgetnotifiedwhen1DOT4GBP,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
