import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/stockapplication.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void alertloading(BuildContext context) {
  
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding:  EdgeInsets.only(bottom: 20.h),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32.r)),
          height: 311.h,
          width: 351.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 40.h, horizontal: 120.w),
                child: Container(
                    width: 110,
                    height: 110,
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                    
                    ),
              ),
              Center(
                child:Text("Your TSLA price alert\nhas been created",textAlign: TextAlign.center,style: MyTextStyles.workfont(fontsize: 24.sp, color: AppColors.grey, fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),
      );
    },
  );
  Future.delayed(Duration(seconds: 3), () {
    
    Navigator.of(context).pushReplacement(
      
      MaterialPageRoute(builder: (context) {
        return stockapp();
      }),
    );
  });
  
}
