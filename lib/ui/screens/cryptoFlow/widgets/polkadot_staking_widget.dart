import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaDotStakingWidget extends StatefulWidget {
  const PolkaDotStakingWidget({super.key});

  @override
  State<PolkaDotStakingWidget> createState() => _PolkaDotStakingWidgetState();
}

class _PolkaDotStakingWidgetState extends State<PolkaDotStakingWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 465.h,
      width: 351.w,
      decoration: BoxDecoration(
          color: AppColors.greyBox, borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 23, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.staking_arrowup,
                ),
                SizedBox(
                  height: 36.h,
                ),
                Text(
                  MyText.Earn1244APY,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 250,
                  child: Text(
                    MyText.Putyourcrypto,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ),
              ],
            ),
            Image.asset(
              AppAssets.staking_flower,
              height: 91.h,
              width: 51.w,
            ),
          ],
        ),
      ),
    );
  }
}
