import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class DonationDetailsPictureWidget extends StatefulWidget {
  DonationDetailsPictureWidget({this.mainImage, this.logoImage, this.title});
  String? mainImage;
  String? logoImage;
  String? title;

  @override
  State<DonationDetailsPictureWidget> createState() => _DonationDetailsPictureWidgetState();
}

class _DonationDetailsPictureWidgetState extends State<DonationDetailsPictureWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.r),
        color: AppColors.greyBox,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: AppColors.greyBox,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeController.bgColor.value,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                      bottomLeft: Radius.circular(50.r),
                      bottomRight: Radius.circular(50.r),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    child: Image.asset(
                      widget.mainImage ?? AppAssets.hunger,
                      fit: BoxFit.cover,
                      width: 180.w,
                      height: 194.h,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      children: [
                        Image.asset(
                          widget.logoImage ?? AppAssets.cancer,
                          height: 32.h,
                          width: 32.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Container(
                          // width: 210.w,
                          child: Text(
                            widget.title ?? MyText.UNWorldFood,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
