import 'package:et_bank/ui/widgets/circularIcons.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaDotImportantWidget extends StatefulWidget {
  PolkaDotImportantWidget({super.key});

  @override
  State<PolkaDotImportantWidget> createState() =>
      _PolkaDotImportantWidgetState();
}

class _PolkaDotImportantWidgetState extends State<PolkaDotImportantWidget> {
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
                MyText.Important,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircularIcons(
                      color: AppColors.primaryButton,
                      image: AppAssets.idea_icon,
                    ),
                    // Image.asset(
                    //   AppAssets.idea_icon,
                    //   height: 43.h,
                    //   width: 43.w,
                    // ),
                    SizedBox(
                      width: 21.w,
                    ),
                    Expanded(
                      child: Container(
                        width: 280,
                        child: Text(
                          MyText.Pleasebeaware,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ),
                  ],
                ),
                





                SizedBox(
                  height: 33.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircularIcons(
                        color: AppColors.primaryButton,
                        image: AppAssets.risk_icon,
                      ),
                      // Image.asset(
                      //   AppAssets.risk_icon,
                      //   height: 43.h,
                      //   width: 43.w,
                      // ),
                      SizedBox(
                        width: 21.w,
                      ),
                      Expanded(
                        child: Container(
                          width: 280,
                          child: Text(
                            MyText.Pleasebecareful,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
