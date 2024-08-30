import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class EsimWidget extends StatefulWidget {
  EsimWidget(
      {super.key,
      required this.image,
      this.title,
      this.subTitle,
      this.internetDataColor,
      this.internetData,
      this.activated});

  String image;
  String? title;
  String? subTitle;
  String? internetData;
  String? activated;

  Color? internetDataColor;

  @override
  State<EsimWidget> createState() => _EsimWidgetState();
}

class _EsimWidgetState extends State<EsimWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(20)),
        // height: 80.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                child: Stack(
                  children: [
                    Image.asset(
                      widget.image,
                      height: 40.h,
                      width: 40.w,
                    ),
                    Positioned(
                      top: 20.h,
                      left: 20.w,
                      child: Image.asset(
                        AppAssets.esim_black_icon,
                        height: 23.h,
                        width: 23,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? 'Empty',
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  Text(
                    widget.subTitle ?? 'empty',
                    style: TextStyle(
                        color: AppColors.greyText2,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.internetData ?? "empty",
                    style: TextStyle(
                        color: widget.internetDataColor ?? AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  Text(
                    widget.activated ?? 'empty',
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
