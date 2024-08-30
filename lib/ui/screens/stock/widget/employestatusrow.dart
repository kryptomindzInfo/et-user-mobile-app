import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';


class TextRowWidget extends StatefulWidget {
  final String text;
  final String imagePath;

  TextRowWidget({required this.text, required this.imagePath});

  @override
  State<TextRowWidget> createState() => _TextRowWidgetState();
}

class _TextRowWidgetState extends State<TextRowWidget> {
final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
          style: MyTextStyles.workfont(
            fontsize: 16.sp,
            color: AppColors.primaryText,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Image.asset(
          widget.imagePath,
          width: 17.w,
          height: 8.h,
          color: AppColors.primaryText,
        ),
      ],
    );
  }
}
