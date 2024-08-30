import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/donations/donations_donate.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());
void charitiesGetAll(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Obx(
        () => Container(
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 788.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 54),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23.h,
                ),
                Text(
                  MyText.Charitiesget100,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  MyText.Supportacause,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Center(
                  child: Image.asset(
                    AppAssets.charitiesget100,
                    height: 189.h,
                    width: 209.w,
                  ),
                ),
                SizedBox(
                  height: 105.h,
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48.h,
                        width: 327.w,
                        child: ButtonWidget(
                            color: AppColors.greenText,
                            text: Text(
                              MyText.Confirm,
                              style: TextStyle(
                                  color: themeController.bgColor.value,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DonationsDonate(),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.primaryButton,
                                spreadRadius: 1),
                          ],
                        ),
                        height: 48.h,
                        width: 327.w,
                        child: ButtonWidget(
                            color: AppColors.greyBox,
                            text: Text(
                              MyText.signupNotifNotnow,
                              style: TextStyle(
                                  color: AppColors.greenText,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
