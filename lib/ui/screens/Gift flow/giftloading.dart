import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/global/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void giftloading(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32.r)),
          height: 342.h,
          width: 351.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120.w,vertical: 10.h),
                child: Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.red, width: 2.w)),
                    child: Image.asset(
                      AppAssets.exit,
                      color: AppColors.red,
                      width: 27.69.w,
                      height: 27.69.h,
                    )),
              ),
              Center(
                child: Text(
                  MyText.youdonthaveenou,
                  textAlign: TextAlign.center,
                  style: MyTextStyles.workfont(
                      fontsize: 20.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
             SizedBox(height:10.h),
              Center(
                child: Text(
                 MyText.addtoyouracc,
                  textAlign: TextAlign.center,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              btn(cardText:  MyText.addmoney, cardWidth: 327.w, cardHeight: 48.h),
            ],
          ),
        ),
      );
    },
  );
  // Future.delayed(Duration(seconds: 3), () {

  //   Navigator.of(context).pushReplacement(

  //     MaterialPageRoute(builder: (context) {
  //       return stockapp();
  //     }),
  //   );
  // });
}
