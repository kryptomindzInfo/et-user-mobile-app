import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

class Accountdetail extends StatefulWidget {
  @override
  State<Accountdetail> createState() => _AccountdetailState();
}

class _AccountdetailState extends State<Accountdetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  MyText.name,
                  style: MyTextStyles.worknormal(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                  ),
                ),
                Spacer(),
                Text(
                  MyText.personel,
                  style: MyTextStyles.worknormal(
                    fontsize: 16.sp,
                    color: AppColors.greenText,
                  ),
                )
              ],
            ),
            SizedBox(height: 22.h),
            Row(
              children: [
                Text(
                  MyText.acc,
                  style: MyTextStyles.worknormal(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                  ),
                ),
                Spacer(),
                Image.asset(AppAssets.iconcopy,width: 15.03.w,height: 15.03.h,),
                SizedBox(width: 5.w),
                Text(
                  MyText.accno,
                  style: MyTextStyles.worknormal(
                    fontsize: 16.sp,
                    color: AppColors.greenText,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  MyText.code,
                  style: MyTextStyles.worknormal(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                  ),
                ),
                Spacer(),
               Image.asset(AppAssets.iconcopy,width: 15.03.w,height: 15.03.h,),
                SizedBox(width: 5.w),
                Text(
                  MyText.codetime,
                  style: MyTextStyles.worknormal(
                    fontsize: 16.sp,
                    color: AppColors.greenText,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
