import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TransferCompletedRowWidget extends StatefulWidget {

  TransferCompletedRowWidget({super.key, this.title});

  String? title;

  @override
  State<TransferCompletedRowWidget> createState() => _TransferCompletedRowWidgetState();
}

class _TransferCompletedRowWidgetState extends State<TransferCompletedRowWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              MyText.Todaytc,
              style: TextStyle(
                  color: AppColors.greyText1,
                  fontFamily: MyTextStyles.worksansFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              MyText.TodayTime,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontFamily: MyTextStyles.worksansFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          width: 15.w,
        ),
        Container(
          height: 49.h,
          width: 4.w,
          decoration: BoxDecoration(
              color: AppColors.yellowButton, borderRadius: BorderRadius.circular(18)),
        ),
        SizedBox(
          width: 18.w,
        ),
        Text(
          widget.title ?? MyText.VerifiedbyETBank,
          style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: MyTextStyles.worksansFamily,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
