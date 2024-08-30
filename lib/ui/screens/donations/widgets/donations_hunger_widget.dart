import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/donations/donations_firstdonation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';


class DonationsHungerWidget extends StatefulWidget {
  @override
  State<DonationsHungerWidget> createState() => _DonationsHungerWidgetState();
}

class _DonationsHungerWidgetState extends State<DonationsHungerWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
        color: AppColors.greyBox,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 349.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: AppColors.greyBox,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeController.bgColor.value,
                    borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(50.r),
                      //  topRight: Radius.circular(50.r),
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(AppAssets.hunger),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                AppAssets.unlogo,
                                height: 61.h,
                                width: 61.w,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 140.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    MyText.UNWorldFoodProgramme,
                                    style: TextStyle(
                                        color: AppColors.greyText2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                  Text(
                                    MyText.FighthungerthisRamadan,
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: MyTextStyles.soraFamily),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      children: [
                        Container(
                          width: 210.w,
                          child: Text(
                            MyText.kpeoplehavedonatedtothischarity,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(DonationsFirstDonation());
                          },
                          child: Container(
                            width: 85.w,
                            height: 39.h,
                            decoration: BoxDecoration(
                              color: AppColors.yellowButton,
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            child: Center(
                              child: Text(
                                MyText.Donate,
                                style: TextStyle(
                                    color: themeController.bgColor.value,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
