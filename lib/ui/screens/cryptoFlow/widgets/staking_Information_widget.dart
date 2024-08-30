import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/circularIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class StakingInformationWidget extends StatefulWidget {
  String image;
  String? title;
  String? subTitle;
  String? amount;
  Color? color;
  Color? textColor;
  Color? subTitleColor;
  double? height;
  double? imagePadding;
  bool? switchbutton;
  bool? switchvalue;
  Widget? button;
  Function(bool)? switchOnchanged;

  StakingInformationWidget(
      {super.key,
      required this.image,
      this.color,
      this.title,
      this.subTitle,
      this.textColor,
      this.subTitleColor,
      this.amount,
      this.height,
      this.switchbutton,
      this.switchOnchanged,
      this.switchvalue,
      this.button,
      this.imagePadding});

  @override
  State<StakingInformationWidget> createState() =>
      _StakingInformationWidgetState();
}

class _StakingInformationWidgetState extends State<StakingInformationWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.color ?? AppColors.white,
            borderRadius: BorderRadius.circular(20)),
        // height: height ?? 86.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularIcons(
                color: AppColors.primaryButton,
                image: widget.image,
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     bottom: widget.imagePadding ?? 0,
              //   ),
              //   child: Image.asset(
              //     widget.image,
              //     width: 43,
              //     height: 43,
              //     color: AppColors.primaryText,
              //   ),
              // ),

              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 260.w,
                    child: Text(
                      widget.title ?? MyText.BritishPound,
                      style: TextStyle(
                          color:
                              widget.textColor ?? themeController.bgColor.value,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    width: 260.w,
                    child: Text(
                      widget.subTitle ?? MyText.GBP,
                      style: TextStyle(
                          color: widget.subTitleColor ?? AppColors.greyText2,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ),
                ],
              ),
              if (widget.amount != null)
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
                  inactiveThumbColor: AppColors.primaryText,
                  activeTrackColor: AppColors.primary,
                  inactiveTrackColor: AppColors.grey,
                  value: widget.switchvalue ?? true,
                  onChanged: widget.switchOnchanged,
                ),
              widget.button ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
