import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class PolkadotOverviewButtonsWidget extends StatefulWidget {
  const PolkadotOverviewButtonsWidget({super.key});

  @override
  State<PolkadotOverviewButtonsWidget> createState() =>
      _PolkadotOverviewButtonsWidgetState();
}

class _PolkadotOverviewButtonsWidgetState
    extends State<PolkadotOverviewButtonsWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 48.h,
            width: 145.w,
            child: ButtonWidget(
                color: AppColors.primaryButton,
                text: Text(
                  MyText.Buy,
                  style: TextStyle(
                      color: AppColors.blackText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                onPressed: () {}),
          ),
          Container(
            height: 48.h,
            width: 145.w,
            child: ButtonWidget(
                color: AppColors.greyBox,
                text: Text(
                  MyText.Sell,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
