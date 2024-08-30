import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/onyoureach_invest.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Xpinvestment extends StatelessWidget {
  const Xpinvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        onyoureachinvest(),
        SizedBox(
          height: 25.h,
        ),
        Text(
          "Rules",
          style: MyTextStyles.sorafont(
              fontsize: 16.sp,
              color: AppColors.primaryText,
              fontWeight: FontWeight.w600),
        ),
        Container(
          width: 349.w,
          height: 609.h,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              MyText.dummytextforxp,
              style: MyTextStyles.sorafont(
                  fontsize: 14.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}
