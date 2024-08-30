import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/CircularIcons2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class YourPlanFreeTrial2 extends StatefulWidget {
  String? image;
  String? title;
  String? subTitle;
  String? amount;
  Color? color;
  // Color? imageColor;
  Color? circleColor;
  Color? textColor;
  Color? subTitleColor;
  Color? amountColor;
  double? height;
  double? imagePadding;
  bool? switchbutton;
  bool? switchvalue;
  Widget? button;
  Function(bool)? switchOnchanged;
  double? paddingbwTitleandSubTitle;

  YourPlanFreeTrial2(
      {super.key,
      this.image,
      this.color,
      // this.imageColor,
      this.circleColor,
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
      this.imagePadding,
      this.amountColor,
      this.paddingbwTitleandSubTitle});

  @override
  State<YourPlanFreeTrial2> createState() => _YourPlanFreeTrial2State();
}

class _YourPlanFreeTrial2State extends State<YourPlanFreeTrial2> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.color ?? AppColors.white,
            borderRadius: BorderRadius.circular(20)),
        height: widget.height ?? 86.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.image != null)
                CircularIcons2(
                  color:widget.circleColor,
                  image: widget.image ?? '',
                  // imageColor:widget.imageColor,
                ),
              // Padding(
              //   padding: EdgeInsets.only(bottom: widget.imagePadding ?? 0),
              //   child: Image.asset(
              //     widget.image ?? '',
              //     width: 43,
              //     height: 43,
              //     color: AppColors.greenText,
              //   ),
              // ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title ?? MyText.BritishPound,
                      style: TextStyle(
                          color:
                              widget.textColor ?? themeController.bgColor.value,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                    SizedBox(
                      height: widget.paddingbwTitleandSubTitle ?? 6.h,
                    ),
                    Expanded(
                      child: Container(
                        // width: 200.w,
                        child: Text(
                          widget.subTitle ?? MyText.GBP,
                          style: TextStyle(
                              color:
                                  widget.subTitleColor ?? AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.amount != null)
                Text(
                  widget.amount ?? '',
                  style: TextStyle(
                      color: widget.amountColor ??
                          widget.textColor ??
                          themeController.bgColor.value,
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
              widget.button ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
