import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class CryptoLastTopStoriesWidget extends StatefulWidget {

  const CryptoLastTopStoriesWidget({super.key});

  @override
  State<CryptoLastTopStoriesWidget> createState() => _CryptoLastTopStoriesWidgetState();
}

class _CryptoLastTopStoriesWidgetState extends State<CryptoLastTopStoriesWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                AppAssets.b_3,
                height: 124.h,
                width: 124.h,
              ),
              Positioned(
                left: 5,
                top: 5,
                child: Container(
                  width: 120,
                  child: Text(
                    MyText.Europesinflation,
                    style: TextStyle(
                        color: themeController.bgColor.value,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 16.w,
          ),
          Stack(
            children: [
              Image.asset(
                AppAssets.b_3,
                height: 124.h,
                width: 124.h,
              ),
              Positioned(
                left: 5,
                top: 5,
                child: Container(
                  width: 120,
                  child: Text(
                    MyText.Europesinflation,
                    style: TextStyle(
                        color: themeController.bgColor.value,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 16.w,
          ),
          Stack(
            children: [
              Image.asset(
                AppAssets.b_3,
                height: 124.h,
                width: 124.h,
              ),
              Positioned(
                left: 5,
                top: 5,
                child: Container(
                  width: 120,
                  child: Text(
                    MyText.Europesinflation,
                    style: TextStyle(
                        color: themeController.bgColor.value,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
