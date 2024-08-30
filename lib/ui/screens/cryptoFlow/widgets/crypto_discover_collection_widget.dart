import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class CryptoDiscoverCollectionWidget extends StatefulWidget {
  const CryptoDiscoverCollectionWidget({super.key});

  @override
  State<CryptoDiscoverCollectionWidget> createState() =>
      _CryptoDiscoverCollectionWidgetState();
}

class _CryptoDiscoverCollectionWidgetState
    extends State<CryptoDiscoverCollectionWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width: 349.w,
            height: 145.h,
            decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 33, left: 27),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.blackColor,
                    radius: 23,
                  ),
                  Positioned(
                    left: 25,
                    child: CircleAvatar(
                      backgroundColor: AppColors.circle2,
                      radius: 23,
                    ),
                  ),
                  Positioned(
                    left: 55,
                    child: CircleAvatar(
                      backgroundColor: AppColors.circle3,
                      radius: 23,
                    ),
                  ),
                  Positioned(
                    left: 85,
                    child: CircleAvatar(
                      backgroundColor: AppColors.circle4,
                      radius: 23,
                      child: Text(
                        '+9',
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 349.w,
            // height: 74.h,
            decoration: BoxDecoration(
                color: AppColors.whiteBox2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                )),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 23, 20, 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyText.Appdevelopment,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.coin_up,
                            height: 10.h,
                            width: 8.w,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            MyText.a545,
                            style: TextStyle(
                                color: AppColors.coinup,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonWidget(
                      color: AppColors.yellowButton,
                      text: Text(
                        MyText.Buy,
                        style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
        ],
      );
    
  }
}
