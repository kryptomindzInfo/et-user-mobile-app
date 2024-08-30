import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback? onTap;

  CircularButton({
    required this.color,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 133.w,
        height: 39.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Work Sans",
              color: AppColors.btnText,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 16.0.sp,
            ),
          ),
        ),
      ),
    );
  }
}
