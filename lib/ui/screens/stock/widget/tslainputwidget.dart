import 'package:et_bank/controllers/stockcontroller/stocktslainputcontroller.dart';
import 'package:et_bank/global/constants/colors.dart';

import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class tslalaertinputwidget extends StatelessWidget {
  final String gbpText;
  final String hintText;
  final String balanceText;
  final Color containerColor;

  tslalaertinputwidget({
    required this.gbpText,
    required this.hintText,
    required this.balanceText,
    required this.containerColor,
  });

  final TslaAlertInputController controller =
      Get.put(TslaAlertInputController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: Container(
        width: 350.w,
        height: 79.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.rgblwhite,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    gbpText,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Stack(
                    children: [
                      Obx(() {
                        return Positioned(
                          left: 160.0 -
                              (controller.numberOfDigits.value - 1) * 10.0,
                          bottom: -4,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "\$",
                              style: MyTextStyles.workfont(
                                  fontsize: 24.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      }),
                      Container(
                        width: 200.w,
                        height: 28.h,
                        child: TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(
                                3), // Limit length to 3 digits
                            FilteringTextInputFormatter
                                .digitsOnly, // Allow only digits
                          ],
                          style: MyTextStyles.workfont(
                              fontsize: 24.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.end,
                          onChanged: (value) {
                            controller.checkLimit(value);
                          },
                          decoration: InputDecoration(
                            hintText: hintText,

                            // prefixText: "\$",
                            prefixStyle: MyTextStyles.workfont(
                                fontsize: 24.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w600),

                            contentPadding: EdgeInsets.only(top: -25.h),
                            hintStyle: MyTextStyles.workfont(
                                fontsize: 24.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w600),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(balanceText,
                      style: MyTextStyles.workfont(
                          fontsize: 12.sp,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400)),
                  Obx(
                    () => controller.errorText.isNotEmpty
                        ? Text(controller.errorText.value,
                            style: MyTextStyles.workfont(
                                fontsize: 12.sp,
                                color: AppColors.grey,
                                fontWeight: FontWeight.w400))
                        : Text(""),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
