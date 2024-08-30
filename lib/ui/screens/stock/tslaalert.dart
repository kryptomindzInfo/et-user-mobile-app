import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';

import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/widget/alertloading.dart';

import 'package:et_bank/ui/screens/stock/widget/tslainputwidget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Tslaalert extends StatefulWidget {
  const Tslaalert({super.key});

  @override
  State<Tslaalert> createState() => _TslaalertState();
}

class _TslaalertState extends State<Tslaalert> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          AppAssets.leftarrow,
                          width: 25.12.w,
                          height: 17.94.h,
                          color: AppColors.primaryText,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "TSLA Alert",
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Alert triggers when 1TLSA equals",
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w400),
              ),
              Align(
                alignment: Alignment.center,
                child: tslalaertinputwidget(
                  gbpText: "USD",
                  hintText: "0",
                  balanceText: "Current  1TSLA=162.25USD",
                  containerColor: AppColors.primaryText,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: ButtonWidget(
                        color: AppColors.primaryButton,
                        text: Text(
                          "Create alert",
                          style: TextStyle(
                              color: AppColors.btnText,
                              fontFamily: 'WorkSans',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          alertloading(context);
                        }),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
