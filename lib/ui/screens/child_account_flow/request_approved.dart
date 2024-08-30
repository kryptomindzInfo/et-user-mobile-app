import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());
void RequestApproved(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ChildName(),
        ));
      });
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 350.h,
          width: 390.w,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 0.0, left: 41, right: 20, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32.h,
                ),
                Container(
                    height: 104.h,
                    width: 104.w,
                    child: Image.asset(
                      AppAssets.green_circle_tick,
                      height: 104.h,
                      width: 104.w,
                    )),
                SizedBox(
                  height: 39.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  MyText.Requestforyourchildaccount,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
