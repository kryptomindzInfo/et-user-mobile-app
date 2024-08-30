import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ServicesMessageTextField extends StatefulWidget {

  ServicesMessageTextField({super.key, this.title});

  String? title;

  @override
  State<ServicesMessageTextField> createState() => _ServicesMessageTextFieldState();
}

class _ServicesMessageTextFieldState extends State<ServicesMessageTextField> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title ?? MyText.CcBccFrom,
          style: TextStyle(
              color: AppColors.greyText2,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: MyTextStyles.worksansFamily),
        ),
        Container(
            height: 25.h,
            width: 200.w,
            child: TextFormField(
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
              decoration: InputDecoration(border: InputBorder.none),
            )),
      ],
    );
  }
}
