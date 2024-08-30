import 'package:et_bank/controllers/accountDetails_Flow/accountDetails_GBP_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class StakeDotWhiteContainerWidget extends StatefulWidget {
  final String gbpText;
  final String hintText;
  final String balanceText;
  final String feeText;
  final Color containerColor;
  final Color exceededColor;
  final int maxLimit;
  final String? value;
  final Function(String?)? onChanged;

  StakeDotWhiteContainerWidget({
    required this.gbpText,
    required this.hintText,
    required this.balanceText,
    required this.containerColor,
    required this.exceededColor,
    required this.maxLimit,
    required this.feeText,
    required this.value,
    required this.onChanged,
  });

  @override
  State<StakeDotWhiteContainerWidget> createState() =>
      _StakeDotWhiteContainerWidgetState();
}

class _StakeDotWhiteContainerWidgetState
    extends State<StakeDotWhiteContainerWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountDetailsGBPController controller =
      Get.put(AccountDetailsGBPController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: Container(
        width: 349.w,
        height: 90.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: widget.containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20.w, top: 15.h, bottom: 15.h, right: 0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      MyText.Estimatedannualreward,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 0.w, top: 0.h, bottom: 0.h, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 104.w,
                    height: 27.h,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        contentPadding:
                            EdgeInsets.only(left: 0.w, top: 0, bottom: 0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontFamily: MyTextStyles.soraFamily),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.feeText,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
