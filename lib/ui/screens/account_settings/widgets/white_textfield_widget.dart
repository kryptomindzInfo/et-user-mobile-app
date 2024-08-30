import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class WhiteTextFieldWidget extends StatefulWidget {

  WhiteTextFieldWidget(
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
  State<WhiteTextFieldWidget> createState() => _WhiteTextFieldWidgetState();
}

class _WhiteTextFieldWidgetState extends State<WhiteTextFieldWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      // height: height ?? 61.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.whiteBox4,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title ?? '',
              style: MyTextStyles.workfont(
                fontsize: 12.sp,
                color: AppColors.greyBox,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 350.w,
              height: widget.textfieldheight ?? 20.h,
              child: TextFormField(
                onChanged: widget.onChanged,
                initialValue: widget.initialValue,
                style: MyTextStyles.workfont(
                  fontsize: 16.sp,
                  color: AppColors.blackText,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 13.h),
                  hintStyle: widget.hintTextStyle ??
                      MyTextStyles.workfont(
                        fontsize: 16.sp,
                        color: AppColors.blackText,
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
