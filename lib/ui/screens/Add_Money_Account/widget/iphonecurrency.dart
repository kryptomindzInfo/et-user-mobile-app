import 'package:et_bank/controllers/exchangeflowcontroller/exchangecontroler.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class iphoneCurrencyInputWidget extends StatelessWidget {
  final String gbpText;
  final String hintText;
  final String balanceText;
  final Color containerColor;
  final Color exceededColor;
  final int maxLimit;

  iphoneCurrencyInputWidget({
    required this.gbpText,
    required this.hintText,
    required this.balanceText,
    required this.containerColor,
    required this.exceededColor,
    required this.maxLimit,
  });

  final BupgpbController currencyController = Get.put(BupgpbController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: Obx(() {
        Color currentColor = currencyController.limitExceeded4.value
            ? exceededColor
            : containerColor;
        return Container(
          width: 349.w,
          height: 83.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: currentColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          gbpText,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Image.asset(
                          AppAssets.icon_arrow_down,
                          color: AppColors.primaryText,
                          width: 13.33.w,
                          height: 6.36.h,
                        ),
                      ],
                    ),
                    Text(
                      balanceText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 110.w),
                  child: Container(
                    width: 104.w,
                    height: 27.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      onChanged: (value) {
                        currencyController.validateValue4(maxLimit, value!);
                      },
                      decoration: InputDecoration(
                        hintText: hintText,
                        contentPadding:
                            EdgeInsets.only(left: 0.w, top: 0, bottom: 0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: TextStyle(
                          fontSize: 24.sp,
                          color: AppColors.primaryText,
                        ),
                        border: InputBorder.none,
                        errorText: currencyController.errorText4.value,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
