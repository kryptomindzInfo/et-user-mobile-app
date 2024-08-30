import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularButtonHome extends StatelessWidget {
  String? image;
  String? text;

  CircularButtonHome({
    super.key,
    this.image,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            image!,
            width: 50.w,
            height: 50.h,
          ),
          Text(
            text!,
            style: MyTextStyles.worknormal(
              fontsize: 16.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
