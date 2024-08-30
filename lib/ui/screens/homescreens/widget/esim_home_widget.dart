import 'package:et_bank/controllers/Bottomnavigation/bottomcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class EsimHomeWidget extends StatefulWidget {
  EsimHomeWidget({super.key});

  @override
  State<EsimHomeWidget> createState() => _EsimHomeWidgetState();
}

class _EsimHomeWidgetState extends State<EsimHomeWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  BtmNavigationController controller = Get.put(BtmNavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 322.w,
      // height: 62.h,
      decoration: BoxDecoration(
        color: AppColors.whiteBox3,
        borderRadius: BorderRadius.circular(31.r),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppAssets.ukesim,
                      width: 41.w,
                      height: 40.h,
                    ),
                    Positioned(
                        left: 19.w,
                        top: 20.h,
                        child: Container(
                          width: 23.12.w,
                          height: 22.91.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.blackColor),
                          child: Center(
                              child: Image.asset(
                            AppAssets.esimhome,
                            width: 9.34.w,
                            height: 12.09.h,
                          )),
                        ))
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "British E-sim",
                      style: MyTextStyles.worknormal(
                          fontsize: 16.sp, color: AppColors.primaryText),
                    ),
                    Text(
                      "+44 556789789",
                      style: MyTextStyles.worknormal(
                        fontsize: 12.sp,
                        color: AppColors.greyText2,
                      ),
                    ),
                  ],
                ),
                // Expanded(child: SizedBox(width: 100.w)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "10 GB/Month",
                      style: MyTextStyles.worknormal(
                        fontsize: 16.sp,
                        color: AppColors.greenText3,
                      ),
                    ),
                    Text(
                      "Activated",
                      style: MyTextStyles.worknormal(
                        fontsize: 12.sp,
                        color: AppColors.greyText2,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Container(
              width: 311.w,
              child: ButtonWidget(
                color: AppColors.whiteBox2,
                text: Text(
                  MyText.ViewAllyouractivatedEsims,
                  style: TextStyle(
                    fontFamily: MyTextStyles.worksansFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  controller.changeTab(4);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
