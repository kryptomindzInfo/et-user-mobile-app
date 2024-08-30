import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Sendemailtopayrol extends StatefulWidget {
  const Sendemailtopayrol({super.key});

  @override
  State<Sendemailtopayrol> createState() => _SendemailtopayrolState();
}

class _SendemailtopayrolState extends State<Sendemailtopayrol> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
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
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        MyText.sendemail,
                        style: MyTextStyles.sorafont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    MyText.sharethis,
                    style: MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 349.w,
                    // height: 270.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.payrollupdate,
                            style: MyTextStyles.workfont(
                                fontsize: 16.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            MyText.hi,
                            style: MyTextStyles.workfont(
                                fontsize: 12.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 230.h, bottom: 20.h),
                    child: btn(
                        cardText: MyText.sharewmail,
                        cardWidth: 327.w,
                        cardHeight: 48.h),
                  ),
                  Container(
                    width: 327.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48.0),
                        border: Border.all(
                          color: AppColors.primaryButton,
                        )),
                    child: Center(
                      child: Text(
                        MyText.copyemail,
                        style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.btnText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
