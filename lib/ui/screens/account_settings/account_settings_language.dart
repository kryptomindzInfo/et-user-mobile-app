import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: AppColors.greyBox,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return  Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 260.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 11.0, left: 20, right: 0, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallRoundedContainerWidget(),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  MyText.Language,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Text(
                  MyText.weusesameLanguage,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 28.h,
                ),
                ButtonWidget(
                    color: AppColors.primaryButton,
                    text: Text(
                      MyText.takeMeThere,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        );
    },
  );
}
