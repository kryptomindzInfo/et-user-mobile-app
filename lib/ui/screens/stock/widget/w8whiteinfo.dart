import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationWidget extends StatelessWidget {
  final String title;
  final String information;

  const InformationWidget({
    Key? key,
    required this.title,
    required this.information,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 351.w,
          height: 61.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
              color: AppColors.rgblwhite,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                  Text(
                    title,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      information,
                      style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500),
                    )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}