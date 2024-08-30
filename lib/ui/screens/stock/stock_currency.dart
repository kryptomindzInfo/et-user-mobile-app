import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/account_widget.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());

void stockcurrencyModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(28.r))),
        height: 300.h,
        width: 390.w,
        child: Padding(
          padding:
              EdgeInsets.only(top: 11.h, left: 20.w, right: 20.w, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallRoundedContainerWidget(),
              SizedBox(height: 16.h),
              Text(
                "Currencies",
                style: MyTextStyles.workfont(
                    fontsize: 24.sp,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2.h,
              ),
              AccountWidget(
                image: AppAssets.ukImage,
                amount: "£0",
                title: "GBP",
                subTitle: "British Pound",
              ),
              SizedBox(
                height: 10.h,
              ),
              AccountWidget(
                image: AppAssets.ukImage,
                amount: "£0",
                title: "USD",
                subTitle: "US Dollar",
              ),
            ],
          ),
        ),
      );
    },
  );
}
