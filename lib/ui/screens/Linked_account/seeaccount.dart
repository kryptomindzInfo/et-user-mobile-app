import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Linked_account/choosebank.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Seeaccount extends StatelessWidget {
  const Seeaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              child: Column(
                children: [
                  Divider(
                    color: AppColors.greyText2,
                    thickness: 2.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Image.asset(
                          AppAssets.logo72,
                          color: AppColors.primaryText,
                        ),
                        Text(
                          MyText.linkAcc,
                          style: MyTextStyles.worknormal(
                              fontsize: 16.sp, color: AppColors.primaryText),
                        ),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset(
                              AppAssets.exit,
                              color: AppColors.primaryText,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200.h, left: 60.w),
                    child: Text(
                      MyText.Seeacc,
                      style: MyTextStyles.sora(
                          fontsize: 40.sp, color: AppColors.primaryText),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 260.h),
                    child: InkWell(
                        onTap: () {
                          Get.to(Choosebank());
                        },
                        child: btn(
                            cardText: "Sign up",
                            cardWidth: 327.w,
                            cardHeight: 48.h)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
