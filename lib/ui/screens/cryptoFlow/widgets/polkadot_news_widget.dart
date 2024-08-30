import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
class PolkaDotNewsWidget extends StatefulWidget {

  PolkaDotNewsWidget(
      {super.key, this.upperText, this.title, this.subtitle, this.image});

  String? upperText;
  String? title;
  String? subtitle;
  String? image;

  @override
  State<PolkaDotNewsWidget> createState() => _PolkaDotNewsWidgetState();
}

class _PolkaDotNewsWidgetState extends State<PolkaDotNewsWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.upperText ?? MyText.Yesterday,
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: MyTextStyles.soraFamily),
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 18, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 225.w,
                      child: Text(
                        widget.title ?? MyText.MythicalGamesandPolkadot,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    Text(
                      widget.subtitle ?? MyText.ZacksComment,
                      style: TextStyle(
                          color: AppColors.greyText2,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
                Image.asset(
                  widget.image ?? AppAssets.ukImage,
                  height: 86.h,
                  width: 86.w,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
