import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaDotOrdersWidget extends StatefulWidget {

  const PolkaDotOrdersWidget({super.key});

  @override
  State<PolkaDotOrdersWidget> createState() => _PolkaDotOrdersWidgetState();
}

class _PolkaDotOrdersWidgetState extends State<PolkaDotOrdersWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Container(
        width: 349.w,
        decoration: BoxDecoration(
          color: AppColors.greyBox,
          borderRadius: BorderRadius.circular(28.r),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(34, 30, 34, 30),
          child: Column(
            children: [
              Image.asset(
                AppAssets.orders_b,
                height: 70.h,
                width: 100,
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                MyText.Yourordersappearhere,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: MyTextStyles.soraFamily),
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                MyText.Pendingmarketorders,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
