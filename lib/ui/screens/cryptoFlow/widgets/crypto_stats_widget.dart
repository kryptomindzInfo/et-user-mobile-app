import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoStatsWidget extends StatefulWidget {
  CryptoStatsWidget({super.key, this.title, this.subtitle});
  String? title;
  String? subtitle;

  @override
  State<CryptoStatsWidget> createState() => _CryptoStatsWidgetState();
}

class _CryptoStatsWidgetState extends State<CryptoStatsWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 465.h,
      width: 351.w,
      decoration: BoxDecoration(
          color: AppColors.greyBox, borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(21, 25, 0, 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title ?? MyText.Earn1244APY,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: MyTextStyles.soraFamily),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.subtitle ?? MyText.Earn1244APY,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
          ],
        ),
      ),
    );
  }
}
