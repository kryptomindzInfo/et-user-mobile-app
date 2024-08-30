import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class CryptoLastCryptoPortfolioWidget extends StatefulWidget {
  const CryptoLastCryptoPortfolioWidget({super.key});

  @override
  State<CryptoLastCryptoPortfolioWidget> createState() => _CryptoLastCryptoPortfolioWidgetState();
}

class _CryptoLastCryptoPortfolioWidgetState extends State<CryptoLastCryptoPortfolioWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.greenText,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 32, 16, 27),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        MyText.amount,
                        style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        AppAssets.blackarrow,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ],
                  ),
                  Image.asset(
                    AppAssets.black_pic,
                    height: 40.h,
                    width: 40.w,
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              Text(
                MyText.Cryptoportfoiovalue,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.c_discover,
                        height: 50.h,
                        width: 50.w,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        MyText.Discover,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.c_earn,
                        height: 50.h,
                        width: 50.w,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        MyText.Earn,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.c_more,
                        height: 50.h,
                        width: 50.w,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        MyText.more,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  MyText.seeall,
                  style: TextStyle(
                      color: AppColors.blackText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
              ),
            ]),
      ),
    );
  }
}
