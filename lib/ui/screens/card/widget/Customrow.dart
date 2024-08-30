import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoRow extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
   final Color? customColor;

  CustomInfoRow({
    required this.imagePath,
    required this.title,
    required this.subtitle,
        this.customColor,
  });
  

  @override
  Widget build(BuildContext context) {
     Color textColor = customColor ?? AppColors.accountBenCardtextcolor;
    return Row(
      children: [
        Container(
          width: 42.w,
          height: 26.213.h,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.sp,
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}
