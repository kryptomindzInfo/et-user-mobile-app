import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/stock/Tesla.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void w8binBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.r)),
          height: 475.h,
          width: 351.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 100.w),
                  child: Container(
                      width: 110,
                      height: 110,
                      child: CircularProgressIndicator(
                        color: AppColors.greenText,
                      )),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Your application is\nbeing reviewed",
                    textAlign: TextAlign.center,
                    style: MyTextStyles.workfont(
                        fontsize: 24.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    MyText.stockreviewing,
                    textAlign: TextAlign.center,
                    style: MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                btn(cardText: "Got it!", cardWidth: 327.w, cardHeight: 48.h)
              ],
            ),
          ),
        ),
      );
    },
  );
  Future.delayed(Duration(seconds: 3), () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) {
        return Tesla();
      }),
    );
  });
}
