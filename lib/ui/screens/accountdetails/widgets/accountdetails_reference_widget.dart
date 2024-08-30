import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReferenceWidget extends StatefulWidget {
  ReferenceWidget(
      {super.key,
      this.text1,
      this.text2,
      this.containerColor,
      this.text2Color});

  String? text1;
  String? text2;
  Color? containerColor;
  Color? text2Color;

  @override
  State<ReferenceWidget> createState() => _ReferenceWidgetState();
}

class _ReferenceWidgetState extends State<ReferenceWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.h,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: widget.containerColor ?? AppColors.greyBox,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0, top: 12, bottom: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text1 ?? 'Reference',
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              widget.text2 ?? 'Sent from ET Bank',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
          ],
        ),
      ),
    );
  }
}
