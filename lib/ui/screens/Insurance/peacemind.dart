import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class Peacemind extends StatefulWidget {
  const Peacemind({super.key});

  @override
  State<Peacemind> createState() => _PeacemindState();
}

class _PeacemindState extends State<Peacemind> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppAssets.exit,
                      color: AppColors.primaryText,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  MyText.peaceofmind,
                  style: MyTextStyles.sorafont(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  MyText.getcoveredfor,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 490.h, left: 10.w),
                  child: InkWell(
                      onTap: () {},
                      child: btn(
                          cardText: "Continue",
                          cardWidth: 327.w,
                          cardHeight: 48.h)),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
