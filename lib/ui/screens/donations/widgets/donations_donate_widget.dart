import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class DonationsDonateWidget extends StatefulWidget {
  String image;
  String? title;
  String? subTitle;
  String? amount;
  Color? color;
  Color? textColor;
  bool? switchbutton;
  Function(bool)? switchOnchanged;
  bool? switchvalue;

  DonationsDonateWidget(
      {super.key,
      required this.image,
      this.color,
      this.title,
      this.subTitle,
      this.textColor,
      this.amount,
      this.switchbutton,
      this.switchOnchanged,
      this.switchvalue});

  @override
  State<DonationsDonateWidget> createState() => _DonationsDonateWidgetState();
}

class _DonationsDonateWidgetState extends State<DonationsDonateWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.color ?? AppColors.white,
            borderRadius: BorderRadius.circular(20)),
        height: 85.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image.asset(
                widget.image,
                width: 50,
                height: 50,
                color: AppColors.greenText,
              ),
              SizedBox(
                width: 14.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180.w,
                    child: Text(
                      widget.title ?? MyText.BritishPound,
                      style: TextStyle(
                          color: widget.textColor ?? themeController.bgColor.value,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ),
                  if (widget.subTitle != null)
                    Text(
                      widget.subTitle ?? MyText.BritishPound,
                      style: TextStyle(
                          color: widget.textColor ?? AppColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
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
                    color: widget.textColor ?? themeController.bgColor.value,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
              if (widget.switchbutton == true)
                Switch(
                  thumbColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return themeController
                          .bgColor.value; // Color when the switch is ON
                    }
                    return Colors.white; // Color when the switch is OFF
                  }),
                  inactiveThumbColor: AppColors.white,
                  activeTrackColor: AppColors.primary,
                  inactiveTrackColor: AppColors.grey,
                  value: widget.switchvalue ?? true,
                  onChanged: widget.switchOnchanged,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
