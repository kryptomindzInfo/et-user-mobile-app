import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/stock/stockaccount.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Letsgetstarted extends StatelessWidget {
  const Letsgetstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: themeController.bgColor.value,
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
                InkWell(
                    onTap: () {
                      Get.to(btmnavigation());
                    },
                    child: Image.asset(
                      AppAssets.exit,
                      color: AppColors.primaryText,
                    )),
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  MyText.letgetstartedstock,
                  style: MyTextStyles.sora5(
                      fontsize: 32.sp, color: AppColors.primaryText),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  MyText.letinvest,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greyText2,
                      fontWeight: FontWeight.w400),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 470.h, left: 10.w),
                //   child: InkWell(
                //       onTap: () {
                //         Get.to(stockaccount());
                //       },
                //       child: btn(
                //           cardText: "Continue",
                //           cardWidth: 327,
                //           cardHeight: 48)),
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: InkWell(
                      onTap: () {
                        Get.to(
                          stockaccount(),
                        );
                      },
                      child: btn(
                          cardText: "Continue",
                          cardWidth: 327.w,
                          cardHeight: 48.h),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
