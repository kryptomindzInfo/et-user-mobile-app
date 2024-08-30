import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ChangeYourIconWidget extends StatefulWidget {
  String image;
  String? title;
  Color? color;

  ChangeYourIconWidget(
      {super.key, required this.image, this.title, this.color});

  @override
  State<ChangeYourIconWidget> createState() => _ChangeYourIconWidgetState();
}

class _ChangeYourIconWidgetState extends State<ChangeYourIconWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color ?? AppColors.changeIconGreen,
          borderRadius: BorderRadius.circular(0)),
      height: 69.h,
      width: 390.w,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 15, 15, 15),
        child: Row(
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  widget.image,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            SizedBox(
              width: 18.w,
            ),
            Text(
              widget.title ?? '',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
          ],
        ),
      ),
    );
  }
}
