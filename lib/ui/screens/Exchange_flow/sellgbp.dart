import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Exchange_flow/exchangeloading.dart';
import 'package:et_bank/ui/screens/Exchange_flow/ordertype.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class sellgbp extends StatelessWidget {
  const sellgbp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    AppAssets.leftarrow,
                    width: 25.12.w,
                    height: 17.94.h,
                    color: AppColors.primaryText,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    OrdertypeBottomSheet(context);
                  },
                  child: Text(
                    MyText.MO,
                    style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset(
                  AppAssets.icon_arrow_down,
                  color: AppColors.greenText,
                  width: 13.33.w,
                  height: 6.36.h,
                ),
              ],
            ),
            SizedBox(
              height: 20.w,
            ),
            Text(
              "+€1.13",
              style: MyTextStyles.sora5(
                fontsize: 32.sp,
                color: AppColors.primaryText,
              ),
            ),
            Text(
              "Sell £1 ",
              style: MyTextStyles.workfont(
                fontsize: 14.sp,
                color: AppColors.primaryText,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            Container(
              width: 350.w,
              height: 270.h,
              decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.circular(13.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Amount",
                          style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "£1",
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Image.asset(
                          AppAssets.order2,
                          color: AppColors.greenText,
                          width: 14.w,
                          height: 8.67.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "£1 = € 1.13337",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greenText,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Exchanged",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          "€ 1.13337",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Fees",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          "No fees",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Estimated total proceed",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          "€ 1.13337",
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 300.h, left: 10.w),
              child: InkWell(
                  onTap: () {
                    ecxhangeBottomSheet(context);
                  },
                  child: btn(
                    cardText: 'Sell GBP for EUR',
                    cardWidth: 327.w,
                    cardHeight: 48.h,
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
