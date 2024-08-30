import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class LabelCardTextField extends StatefulWidget {

  LabelCardTextField(
      {super.key,
      this.title,
      this.initialValue,
      this.height,
      this.textfieldheight,
      this.hintText,
      this.hintTextStyle,
      this.onChanged});

  String? title;
  String? initialValue;
  String? hintText;
  TextStyle? hintTextStyle;
  double? height;
  double? textfieldheight;
  Function(String)? onChanged;

  @override
  State<LabelCardTextField> createState() => _LabelCardTextFieldState();
}

class _LabelCardTextFieldState extends State<LabelCardTextField> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: widget.height ?? 61.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350.w,
              height: widget.textfieldheight ?? 20.h,
              child: TextFormField(
                onChanged: widget.onChanged,
                initialValue: widget.initialValue,
                style: MyTextStyles.workfont(
                  fontsize: 16.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 13.h),
                  hintStyle: widget.hintTextStyle ??
                      MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.buttongrey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
