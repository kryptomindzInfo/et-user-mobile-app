import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/Affilliation.dart';
import 'package:et_bank/ui/screens/stock/widget/employestatusrow.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Investmentgoal extends StatefulWidget {
  const Investmentgoal({super.key});

  @override
  State<Investmentgoal> createState() => _InvestmentgoalState();
}

class _InvestmentgoalState extends State<Investmentgoal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
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
                      )),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    MyText.Ig,
                    style: MyTextStyles.sora5(
                        fontsize: 26.sp, color: AppColors.primaryText,),
                  )
                ],
              ),
            ),
            Text(
              MyText.requiredto,
              style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(Affiliation());
              },
              child: Container(
                width: 349.w,
                height: 262.h,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  child: Column(
                    children: [
                      TextRowWidget(
                        text: MyText.Longterm,
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextRowWidget(
                        text: MyText.Tradinginf,
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextRowWidget(
                        text: MyText.Freqtrader,
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextRowWidget(
                        text: MyText.activetarde,
                        imagePath: AppAssets.rightarrow,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextRowWidget(
                        text: MyText.newto,
                        imagePath: AppAssets.rightarrow,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
