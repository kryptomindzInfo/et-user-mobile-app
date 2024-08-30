import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/circularIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountsWidget extends StatefulWidget {
  String? image;
  String? title;
  String? subTitle;
  String? amount;
  Color? color;
  Color? imageColor;
  Color? textColor;
  bool? switchbutton;
  Function(bool)? switchOnchanged;
  bool? switchvalue;
  double? imageheight;
  double? imagewidth;

  AccountsWidget(
      {super.key,
      this.image,
      this.color,
      this.imageColor,
      this.title,
      this.subTitle,
      this.textColor,
      this.amount,
      this.switchbutton,
      this.switchOnchanged,
      this.switchvalue,
      this.imageheight,
      this.imagewidth});

  @override
  State<AccountsWidget> createState() => _AccountsWidgetState();
}

class _AccountsWidgetState extends State<AccountsWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.color ?? AppColors.greyBox  ,
            borderRadius: BorderRadius.circular(20)),
        height: 85.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              if (widget.image != null)
                CircularIcons(
                  
                  imageColor: widget.imageColor ,
                  color: AppColors.greenText,
                  image: widget.image ?? '',
                ),
              // Image.asset(
              //   widget.image ?? '',
              //   width: widget.imagewidth ?? 50,
              //   height: widget.imageheight ?? 50,
              //   color: AppColors.greenText,
              // ),
              SizedBox(
                width: 14.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 240.h,
                    child: Text(
                      widget.title ?? MyText.BritishPound,
                      style: TextStyle(
                          color:
                              widget.textColor ?? AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ),
                  if (widget.subTitle != null)
                    Text(
                      widget.subTitle ?? MyText.BritishPound,
                      style: TextStyle(
                          color: widget.textColor ?? AppColors.greyText2,
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
                    color: widget.textColor ?? AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: MyTextStyles.soraFamily),
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
