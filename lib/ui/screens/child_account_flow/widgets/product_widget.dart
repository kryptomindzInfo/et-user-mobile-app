import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ProductWidget extends StatefulWidget {

  ProductWidget({super.key, this.title, this.image});

  String? title;
  String? image;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        // height: 310.h,
        width: 263.w,
        decoration: BoxDecoration(
            color: AppColors.childDarkBlue,
            borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  widget.image ?? AppAssets.nike_shoes,
                  fit: BoxFit.cover,
                  height: 150.h,
                  width: 263.w,
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title ?? MyText.NikeShoes,
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: MyTextStyles.soraFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '£ 52',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.accountSubTitle,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ends on 13-Jun-2023 11:00',
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '£ 39',
                        style: TextStyle(
                            color: AppColors.childYellow,
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Positioned(
              top: 14.h,
              child: Container(
                height: 31.h,
                width: 83.w,
                decoration: BoxDecoration(
                    color: AppColors.childDarkBlue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Center(
                  child: Text(
                    '25% OFF',
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: MyTextStyles.soraFamily,
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
