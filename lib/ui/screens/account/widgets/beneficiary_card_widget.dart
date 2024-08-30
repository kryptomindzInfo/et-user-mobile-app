import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class BeneficiaryCardWidget extends StatefulWidget {
  const BeneficiaryCardWidget({super.key});

  @override
  State<BeneficiaryCardWidget> createState() => _BeneficiaryCardWidgetState();
}

class _BeneficiaryCardWidgetState extends State<BeneficiaryCardWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 238.h,
      width: 350.w,
      decoration: BoxDecoration(
          color: AppColors.allBoxes,
          borderRadius: BorderRadius.circular(28.r)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(25.w, 17.h, 25.w, 0.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.Beneficiary,
                      style: TextStyle(
                          color: AppColors.greyText2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    Text(
                      MyText.AlinaJames,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Image.asset(AppAssets.icon_copy),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.account,
                      style: TextStyle(
                          color: AppColors.greyText2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    Text(
                      MyText.accountNo,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Image.asset(AppAssets.icon_copy),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.SortCodeText,
                      style: TextStyle(
                          color: AppColors.greyText2,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    Text(
                      MyText.SortCode,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image.asset(AppAssets.icon_copy),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
