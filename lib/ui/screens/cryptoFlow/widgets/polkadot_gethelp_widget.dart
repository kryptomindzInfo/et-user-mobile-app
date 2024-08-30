import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaGetHelpWidget extends StatefulWidget {

  PolkaGetHelpWidget({super.key});

  @override
  State<PolkaGetHelpWidget> createState() => _PolkaGetHelpWidgetState();
}

class _PolkaGetHelpWidgetState extends State<PolkaGetHelpWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 0, bottom: 64, top: 32, right: 0),
          child: Container(
            // height: 465.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 0, top: 24, right: 0, bottom: 24),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250.w,
                      child: Text(
                        MyText.Somethingwrong,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
