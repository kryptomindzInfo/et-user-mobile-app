import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountWidget extends StatefulWidget {
  String image;
  String? title;
  String? subTitle;
  String? amount;
  Color? color;
  Color? textColor;

  AccountWidget(
      {super.key,
      required this.image,
      this.color,
      this.title,
      this.subTitle,
      this.textColor,
      this.amount});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.color ?? AppColors.greyBox,
            borderRadius: BorderRadius.circular(20)),
        height: 80.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image.asset(
                widget.image,
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 18.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? MyText.BritishPound,
                    style: TextStyle(
                        color: widget.textColor ?? AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'WorkSans'),
                  ),
                  Text(
                    widget.subTitle ?? MyText.GBP,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'WorkSans'),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: 123.w,
                ),
              ),
              Text(
                widget.amount ?? '',
                style: TextStyle(
                    color: widget.textColor ?? AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
