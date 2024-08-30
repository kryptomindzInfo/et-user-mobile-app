import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StockCheckedWidget extends StatefulWidget {
  final String text;
  final String imagePath;

  StockCheckedWidget({required this.text, required this.imagePath});

  @override
  State<StockCheckedWidget> createState() => _StockCheckedWidgetState();
}

class _StockCheckedWidgetState extends State<StockCheckedWidget> {
  final RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.w,
      height: 61.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.greyBox,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
        child: Obx(
          () {
            return Row(
              children: [
                Checkbox(
                  value: isChecked.value,
                  onChanged: (bool? value) {
                    isChecked.value = value ?? false;
                  },
                  activeColor: AppColors.greenText,
                  checkColor: AppColors.blackColor,
                ),
                Text(
                  widget.text,
                  style: MyTextStyles.workfont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  width: 12.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.greyText2,
                      width: 1.w,
                    ),
                  ),
                  child: Image.asset(
                    widget.imagePath,
                    width: 2.w,
                    height: 8.h,
                    color: AppColors.greyText2,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
