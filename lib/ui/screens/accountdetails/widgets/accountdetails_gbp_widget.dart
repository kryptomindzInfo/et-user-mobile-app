import 'package:et_bank/controllers/accountDetails_Flow/accountDetails_GBP_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountDetailsGBPWidget extends StatefulWidget {
  final String gbpText;
  final String hintText;
  final String balanceText;
  final String feeText;
  final Color containerColor;
  final Color exceededColor;
  final int maxLimit;

  AccountDetailsGBPWidget({
    required this.gbpText,
    required this.hintText,
    required this.balanceText,
    required this.containerColor,
    required this.exceededColor,
    required this.maxLimit,
    required this.feeText,
  });

  @override
  State<AccountDetailsGBPWidget> createState() =>
      _AccountDetailsGBPWidgetState();
}

class _AccountDetailsGBPWidgetState extends State<AccountDetailsGBPWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountDetailsGBPController controller =
      Get.put(AccountDetailsGBPController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: Obx(() {
        return Container(
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
                    left: 30.w, top: 15.h, bottom: 15.h, right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
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
                              height: 11.h,
                              width: 22.h,
                              AppAssets.icon_arrow_down,
                              color: AppColors.primaryText,
                            ),
                            value: controller.selectedCurrency.value,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                            borderRadius: BorderRadius.circular(4),
                            dropdownColor: AppColors.greyText2,
                            items: <String>[
                              'AUD',
                              'USD',
                              'CAD',
                              'BGN',
                              'CLP',
                              'COP'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              controller.changeSelectedCurrency(value!);
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.w,
                    ),
                    Text(
                      widget.balanceText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 0.w, top: 0.h, bottom: 0.h, right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // color: Colors.red,
                      width: 104.w,
                      height: 27.h,
                      child: TextFormField(
                        style: TextStyle(color: AppColors.primaryText, fontSize: 20),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.end,
                        onChanged: (value) {},
                        decoration: InputDecoration(
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
                      height: 20,
                    ),
                    Text(
                      widget.feeText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
