import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class PolkaDotFeaturedInCollectionWidget extends StatefulWidget {
  const PolkaDotFeaturedInCollectionWidget({super.key});

  @override
  State<PolkaDotFeaturedInCollectionWidget> createState() => _PolkaDotFeaturedInCollectionWidgetState();
}

class _PolkaDotFeaturedInCollectionWidgetState extends State<PolkaDotFeaturedInCollectionWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 16, top: 32),
          child: Text(
            MyText.FeaturedinCollections,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        Container(
          // height: 465.h,
          width: 200.w,
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 22, right: 0, bottom: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 130,
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: themeController.bgColor.value,
                      radius: 23,
                      child: Image.asset(AppAssets.ADA),
                    ),
                    Positioned(
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 7,
                              offset:
                                  Offset(-3, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColors.circle2,
                          radius: 23,
                          child: Image.asset(AppAssets.ADA),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 7,
                              offset:
                                  Offset(-3, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColors.circle3,
                          radius: 23,
                          child: Image.asset(AppAssets.ADA),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 7,
                              offset:
                                  Offset(-3, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColors.circle4,
                          radius: 23,
                          child: Text(
                            '+9',
                            style: TextStyle(
                                color: themeController.bgColor.value,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 86.h,
              ),
              Text(
                MyText.Layer01,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: MyTextStyles.soraFamily),
              ),
              Row(
                children: [
                  Image.asset(
                    AppAssets.coin_up,
                    height: 12.h,
                    width: 10,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    MyText.a081,
                    style: TextStyle(
                        color: AppColors.coinup,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
