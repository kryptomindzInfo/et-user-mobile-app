import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoLastAnalyticsWidget extends StatefulWidget {

  const CryptoLastAnalyticsWidget({super.key});

  @override
  State<CryptoLastAnalyticsWidget> createState() => _CryptoLastAnalyticsWidgetState();
}

class _CryptoLastAnalyticsWidgetState extends State<CryptoLastAnalyticsWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 15, 0, 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyText.ProfitandLoss,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              MyText.amountinDollars,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: MyTextStyles.soraFamily),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              MyText.Todaytc,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
          ],
        ),
      ),
    );
  }
}
