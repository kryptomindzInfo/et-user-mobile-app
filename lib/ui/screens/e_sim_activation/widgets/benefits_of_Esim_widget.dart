import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class BenefitsOfEsimWidget extends StatefulWidget {

  BenefitsOfEsimWidget({super.key, this.title, this.subtitle});

  String? title;
  String? subtitle;

  @override
  State<BenefitsOfEsimWidget> createState() => _BenefitsOfEsimWidgetState();
}

class _BenefitsOfEsimWidgetState extends State<BenefitsOfEsimWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title ?? MyText.Convenience1,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: MyTextStyles.worksansFamily),
          ),
          SizedBox(height: 16.h),
          Text(
            widget.subtitle ?? MyText.Conveniencedesc,
            style: TextStyle(
                color: AppColors.greyText2,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: MyTextStyles.worksansFamily),
          ),
          SizedBox(
            height: 32.h,
          ),
        ],
      ),
    );
  }
}
