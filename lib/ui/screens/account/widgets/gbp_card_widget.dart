import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class GBPCardWidget extends StatefulWidget {

  const GBPCardWidget({super.key});

  @override
  State<GBPCardWidget> createState() => _GBPCardWidgetState();
}

class _GBPCardWidgetState extends State<GBPCardWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188.h,
      width: 350.w,
      decoration: BoxDecoration(
          color: AppColors.greyBox, borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(34, 39, 34, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      MyText.startingOnText,
                      style: TextStyle(
                          color: AppColors.accountBenCardtextcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    SizedBox(
                      height: 56.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(11)),
                      height: 45.h,
                      width: 120.w,
                      child: Center(
                        child: Text(
                          MyText.startingOn,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      MyText.endingOnText,
                      style: TextStyle(
                          color: AppColors.accountBenCardtextcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    SizedBox(
                      height: 56.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(11)),
                      height: 45.h,
                      width: 120.w,
                      child: Center(
                        child: Text(
                          MyText.startingOn,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
