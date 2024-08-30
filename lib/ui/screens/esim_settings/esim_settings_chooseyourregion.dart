import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/countries_list.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());
void chooseYourRegion(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 770.h,
        width: 390.w,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 33.0, left: 41, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.Chooseyourregion,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 640.h,
                child: ListView.builder(
                  itemCount: allCountries.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          allCountries[index].name,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
