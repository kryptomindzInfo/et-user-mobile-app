import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class CryptoLastWatchListWidget extends StatefulWidget {

  CryptoLastWatchListWidget(
      {super.key, this.image, this.title, this.subtitle, this.buttontext});

  String? image;
  String? title;
  String? subtitle;
  String? buttontext;

  @override
  State<CryptoLastWatchListWidget> createState() => _CryptoLastWatchListWidgetState();
}

class _CryptoLastWatchListWidgetState extends State<CryptoLastWatchListWidget> {
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
        padding: const EdgeInsets.fromLTRB(17, 27, 12, 27),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  widget.image ?? AppAssets.crypto_cards,
                  height: 21.h,
                  width: 35.w,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.title ?? MyText.Keeptrackofcrypto,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Container(
                  width: 80.w,
                  child: ButtonWidget(
                      color: AppColors.yellowButton,
                      text: Text(
                        widget.buttontext ?? MyText.Add,
                        style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
