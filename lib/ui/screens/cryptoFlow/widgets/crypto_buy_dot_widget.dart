import 'package:et_bank/controllers/accountDetails_Flow/accountDetails_GBP_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoBuyDotWidget extends StatefulWidget {
  final String gbpText;
  final String hintText;
  final String balanceText;
  final String feeText;
  final Color containerColor;
  final Color exceededColor;
  final int maxLimit;
  final String? value;
  final Function(String?)? onChanged;
  Function(String?)? textFieldOnchanged;
  Color? feeTextColor;
  Widget? prefixIcon;
  double? textFieldWidth;

  CryptoBuyDotWidget({
    required this.gbpText,
    required this.hintText,
    required this.balanceText,
    required this.containerColor,
    required this.exceededColor,
    required this.maxLimit,
    required this.feeText,
    required this.value,
    required this.onChanged,
    this.feeTextColor,
    this.textFieldOnchanged,
    this.prefixIcon,
    this.textFieldWidth,
  });

  @override
  State<CryptoBuyDotWidget> createState() => _CryptoBuyDotWidgetState();
}

class _CryptoBuyDotWidgetState extends State<CryptoBuyDotWidget> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.red,
                    width: 70.w,
                    height: 30.h,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        menuMaxHeight: 300,
                        isExpanded: true,
                        hint: Text(
                          MyText.gbp,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        icon: Image.asset(
                          AppAssets.icon_arrow_down,
                          color: AppColors.primaryText,
                          height: 8.h,
                          width: 20.w,
                        ),
                        value:
                            widget.value ?? controller.selectedCurrency.value,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                        borderRadius: BorderRadius.circular(4),
                        dropdownColor: AppColors.greyBox,
                        items: <String>[
                          'AUD',
                          'USD',
                          'CAD',
                          'BGN',
                          'CLP',
                          'COP',
                          'DOT',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: widget.onChanged ??
                            (value) {
                              controller.changeSelectedCurrency(value!);
                            },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.w,
                  ),
                  Container(
                    // width: 180,
                    child: Text(
                      widget.balanceText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400,
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
                    // color: Colors.red,
                    width: widget.textFieldWidth ?? 104.w,
                    height: 30.h,
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(3),
                      ],
                      style: TextStyle(color: AppColors.primaryText, fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      onChanged: widget.textFieldOnchanged ?? (value) {},
                      decoration: InputDecoration(
                        prefix: widget.prefixIcon,
                        hintText: widget.hintText,
                        contentPadding:
                            EdgeInsets.only(left: 0.w, top: 0, bottom: 0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: TextStyle(
                          fontSize: 24.sp,
                          color: AppColors.primaryText,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Text(
                    widget.feeText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: widget.feeTextColor ?? AppColors.greyText2,
                      fontWeight: FontWeight.w400,
                    ),
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
