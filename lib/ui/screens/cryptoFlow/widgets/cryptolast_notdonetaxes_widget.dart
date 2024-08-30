import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class CryptoLastNotDoneTaxes extends StatefulWidget {

  CryptoLastNotDoneTaxes(
      {super.key,
      this.image,
      this.title,
      this.subtitle,
      this.buttontext,
      this.onPressed});

  String? image;
  String? title;
  String? subtitle;
  String? buttontext;
  void Function()? onPressed;

  @override
  State<CryptoLastNotDoneTaxes> createState() => _CryptoLastNotDoneTaxesState();
}

class _CryptoLastNotDoneTaxesState extends State<CryptoLastNotDoneTaxes> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(17, 27, 12, 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.image ?? AppAssets.taxesnotdone,
                  height: 21.h,
                  width: 35.w,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title ?? MyText.Haventdoneyourtaxes,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                    Container(
                      width: 260,
                      child: Text(
                        widget.subtitle ?? MyText.Getupto60discount,
                        style: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            ButtonWidget(
                color: AppColors.greenText,
                text: Text(
                  widget.buttontext ?? MyText.Getstarted,
                  style: TextStyle(
                      color: AppColors.blackText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                onPressed: widget.onPressed ?? () {})
          ],
        ),
      ),
    );
  }
}
