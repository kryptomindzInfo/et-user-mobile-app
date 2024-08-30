import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

void ecxhangeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: AppColors.blackColor,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32.r)),
          height: 240.h,
          width: 351.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 20.h, horizontal: 120.w),
                child: Container(
                    width: 110,
                    height: 110,
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    )),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'You sold',
                          style: MyTextStyles.workfont(
                              fontsize: 24.sp,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: ' €1',
                          style: MyTextStyles.sorafont(
                              fontsize: 24.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: ' for ',
                          style: MyTextStyles.workfont(
                              fontsize: 24.sp,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: '€1.13337',
                          style: MyTextStyles.sorafont(
                              fontsize: 24.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
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
        return btmnavigation();
      }),
    );
  });
}
