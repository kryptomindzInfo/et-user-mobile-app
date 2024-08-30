import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class stocknewrowwidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String imagePath;

  stocknewrowwidget({required this.firstText, required this.secondText, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              firstText,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.primaryText, // Replace with your app color
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              secondText,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.greyText2, 
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Image.asset(imagePath), // Use the provided image path
      ],
    );
  }
}
