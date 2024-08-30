
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  final Color color;
  final Color borderColor; 
  final Color textColor; 
  final String title;
  final VoidCallback? onTap;

  RoundButton({
    required this.color,
    required this.borderColor,
    required this.textColor,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, 
      child: Container(
        width: 327.w,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: borderColor, 
          ),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Work Sans",
              color: textColor, 
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
